#pragma once
#ifndef _PROTOCAL_32960_H_
#define _PROTOCAL_32960_H_
#include <string.h>
#include <iostream>
#include <pthread.h>

namespace Skywell
{
typedef char sint8;
typedef unsigned char uint8;
typedef short sint16;
typedef unsigned short uint16;
typedef int sint32;
typedef unsigned int uint32;

typedef unsigned long uint8_least;
typedef unsigned long uint16_least;
typedef unsigned long uint32_least;

typedef signed long sint8_least;
typedef signed long sint16_least;
typedef signed long sint32_least;

typedef float float32;
typedef double float64;
/*****************************************************************************/
/**
 * @file        CMan32960.h
 * @author      ZhangHaijun
 * @date        2020-05-08
 * @version     1.0
 * @brief
 * @copyright   Copyright (c) 2010-2030  金龙客车制造有限公司
 * @remarks     无
 ******************************************************************************/

/*****************************************************************************
 *                                头文件引用                                  *
 *****************************************************************************/

/*****************************************************************************
 *                                宏定义                                  *
 *****************************************************************************/

/*****************************************************************************
 *                                类定义                                  *
 *****************************************************************************/
class CMan32960
{
public:
  CMan32960(uint32 size);
  virtual ~CMan32960();

  sint32 add_str_buf(uint8* buf, sint32 count);
  sint32 search_one_32960(uint8* frame, uint32 size);

  uint32 get_recv_frames(void);
  uint32 get_output_frames(void);
  uint32 get_data_size(void);

private:
  uint32 m_u32_buf_size;  //内部缓冲区的大小

  uint8* m_p_buf;  //接收字符串的缓冲区

  uint32 m_u32_index;          //缓冲区内数据的长度
  uint32 m_u32_recv_frames;    //接收32960的总帧数
  uint32 m_u32_output_frames;  //发出的总帧数

  pthread_mutex_t mutex;  //线程锁
};

}  // namespace Skywell

#endif