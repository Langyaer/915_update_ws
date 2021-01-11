/*
 *  Copyright (C) 2012 Austin Robot Technology, Jack O'Quin
 *  Copyright (C) 2016 Robosense, Tony Zhang
 *  License: Modified BSD Software License Agreement
 *
 *  $Id$
 */

/** \file

    This ROS node converts raw RSLIDAR LIDAR packets to PointCloud2.

*/
#include "convert.h"
#include "tcp_client.h"
#include "attitude.h"
#include "rawdata.h"
#include "protocal_32960.h"
#include <thread>

Skywell::CTcpClient tcp_atti_recv;  //从以太网定位端接受姿态信息

/** Main node entry point. */
int main(int argc, char** argv)
{
  tcp_atti_recv.init_tcp_client("192.168.1.62", 20150);
  try
  {
    tcp_atti_recv.set_read_callback_func(Skywell::data_from_location);
  }
  catch (char* str)
  {
    std::cout << str << std::endl;
  }
  std::thread atti_recv_thd(Skywell::atti_from_location);  //创建姿态解析线程

  ros::init(argc, argv, "cloud_node");
  ros::NodeHandle node;
  ros::NodeHandle priv_nh("~");

  // create conversion class, which subscribes to raw data
  rslidar_pointcloud::Convert conv(node, priv_nh);
  ros::MultiThreadedSpinner spinner(6);  // ros下启动多线程处理
  // handle callbacks until shut down
  ros::spin(spinner);

  atti_recv_thd.join();
  return 0;
}
