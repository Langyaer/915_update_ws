
#include "protocal_32960.h"

namespace Skywell
{
/*****************************************************************************/
/**
 * @file        CMan32960.cpp
 * @author      ZhangHaijun
 * @date        2020-05-09
 * @version     1.0
 * @brief
 * @copyright   Copyright (c) 2010-2030  金龙客车制造有限公司
 * @remarks     无
 ******************************************************************************/

/*****************************************************************************
 *                               头文件引用                                   *
 *****************************************************************************/

/*****************************************************************************
 *                                局部宏定义                                  *
 *****************************************************************************/
#define MAX_BUF_SIZE 70000
#define FRAME_HEAD_SIZE 11
#define MIN_FRAME_SIZE FRAME_HEAD_SIZE + 2

/*****************************************************************************/
/**
 * \author      zhanghaijun
 * \date        2020/05/09
 * \brief       类构造函数
 * \param[in]   none
 * \return      none
 * \ingroup     CMan32960
 * \remarks     无
 ******************************************************************************/
CMan32960::CMan32960(uint32 size)
{
  // size范围保护
  if (size > MAX_BUF_SIZE)
    m_u32_buf_size = MAX_BUF_SIZE;
  else
    m_u32_buf_size = size;

  if (size < MIN_FRAME_SIZE)
    m_u32_buf_size = MIN_FRAME_SIZE;
  else
    m_u32_buf_size = size;

  //申请内存
  m_p_buf = new uint8[m_u32_buf_size + 1];

  //初始化线程锁
  pthread_mutex_init(&mutex, NULL);

  m_u32_index = 0;
  m_u32_recv_frames = 0;
  m_u32_output_frames = 0;
}

/*****************************************************************************/
/**
 * \author      zhanghaijun
 * \date        2020/05/09
 * \brief       类析构函数
 * \param[in]   none
 * \return      none
 * \ingroup     CMan32960
 * \remarks     无
 ******************************************************************************/
CMan32960::~CMan32960()
{
  //释放内存
  delete[] m_p_buf;
  //销毁线程锁
  pthread_mutex_destroy(&mutex);
}

/*****************************************************************************/
/**
 * @brief       添加字符串到缓冲区
 *
 * @param[in]   buf 字符串首地址
 * @param[in]   count 字符串长度
 * @return      sint32 放不下的长度
 * @remarks     无
 ******************************************************************************/
sint32 CMan32960::add_str_buf(uint8* buf, sint32 count)
{
  sint32 old_count;

  if (NULL == m_p_buf)  //内存没申请成功
  {
    return 0;
  }
  if ((NULL == buf) || (count <= 0))  //输入参数错误
  {
    return 0;
  }

  if (m_u32_index >= m_u32_buf_size)  //缓冲区已满，无法放了
  {
    m_u32_index = m_u32_buf_size;
    return count;
  }

  pthread_mutex_lock(&mutex);

  old_count = count;  //保存希望添加的字符数
  if ((m_u32_index + count) >= m_u32_buf_size)
    count = m_u32_buf_size - m_u32_index;  //计算实际添加的字符数

  memcpy(m_p_buf + m_u32_index, buf, count);

  //更新缓冲区位置
  m_u32_index += count;

  pthread_mutex_unlock(&mutex);

  return (old_count - count);  //放不下的字符数
}

/*****************************************************************************/
/**
 * @brief       从类内缓冲区查找一完整32960帧，并输出
 *
 * @param[in]   frame 帧首地址
 * @param[in]   size frame缓冲区的大小
 * @return      sint32 :帧的长度，如果为0，表示没有帧数据
 * @remarks     无
 ******************************************************************************/
sint32 CMan32960::search_one_32960(uint8* frame, uint32 size)
{
  uint32 i, data_length;
  uint32 head_position;
  uint32 frame_last_pos;
  uint32 frame_size = 0;

  if (NULL == m_p_buf)  //内存没申请成功
  {
    return 0;
  }
  if (NULL == frame)  //参数输入错误
  {
    return 0;
  }

  if (m_u32_index < MIN_FRAME_SIZE)  //长度小于最短32960报文，不够一帧报文
    return 0;

  pthread_mutex_lock(&mutex);

  //找帧头
  for (i = 0; i < (m_u32_index - MIN_FRAME_SIZE + 1); i++)
  {
    if ((m_p_buf[i + 0] == 0x23) && (m_p_buf[i + 1] == 0x23))
    {
      //计算数据单元长度
      data_length = (((uint16)m_p_buf[i + 9]) << 8) + m_p_buf[i + 10];

      if (data_length > (m_u32_buf_size - FRAME_HEAD_SIZE - 2))  //数据大小不对，丢弃这次检测的帧头
      {
        continue;
      }

      frame_last_pos = i + FRAME_HEAD_SIZE + data_length + 2;
      if (frame_last_pos <= m_u32_index)
      {
        //检测帧尾
        if ((m_p_buf[frame_last_pos - 2] == 0x24) && (m_p_buf[frame_last_pos - 1] == 0x24))
        {
          m_u32_recv_frames++;

          if ((FRAME_HEAD_SIZE + data_length + 2) <= size)  //帧大小与缓冲区大小比较
          {
            m_u32_output_frames++;
            frame_size = FRAME_HEAD_SIZE + data_length + 2;
            memcpy(frame, m_p_buf + i, frame_size);

            //移动剩下的数据
            memmove(m_p_buf, m_p_buf + i + frame_size, m_u32_index - i - frame_size);
            m_u32_index = m_u32_index - i - frame_size;
            break;
          }
          else
          {
            i += FRAME_HEAD_SIZE + data_length + 2;
          }
        }
      }
      else  //长度不够一完整帧
      {
        memmove(m_p_buf, m_p_buf + i, m_u32_index - i);  //去除头部无效数据
        m_u32_index -= m_u32_index - i;
        break;
      }
    }
  }
  // printf("\n");
  if (i == m_u32_index - MIN_FRAME_SIZE + 1)  //没有找到数据，丢弃头部
  {
    memmove(m_p_buf, m_p_buf + i, m_u32_index - i);  //去除无效数据
    m_u32_index = m_u32_index - i;
  }

  pthread_mutex_unlock(&mutex);

  return frame_size;
}

/*****************************************************************************/
/**
 * @brief       获取程序运行后接受到的32960帧总数量
 *
 * @return      uint32 接收帧数量
 * @remarks     无
 ******************************************************************************/
uint32 CMan32960::get_recv_frames(void)
{
  return m_u32_recv_frames;
}

/*****************************************************************************/
/**
 * @brief       获取当前缓冲区内数据数量
 *
 * @return      uint32 数据内容的大小
 * @remarks     字节为单位
 ******************************************************************************/
uint32 CMan32960::get_data_size(void)
{
  return m_u32_index;
}

/*****************************************************************************/
/**
 * @brief       获取程序运行后发出到的32960帧总数量
 *
 * @return      uint32 发出帧数量
 * @remarks     无
 ******************************************************************************/
uint32 CMan32960::get_output_frames(void)
{
  return m_u32_output_frames;
}
}  // namespace Skywell