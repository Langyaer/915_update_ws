#pragma once
#ifndef _ATTITUDE_H_
#define _ATTITUDE_H_

// #include <stdio.h>
// #include <string.h>
// #include <stdint.h>
#include <math.h>
#include <Eigen/Dense>
#include "protocal_32960.h"

//����һ��4ά������һ��3ά����
typedef Eigen ::Matrix<float, 4, 1> Vect_4f;
#define DEG_TO_RAD (0.017453292f)
#define RAD_TO_DEG (57.29577951f)
extern Skywell::CMan32960 tcp_32960_header;

namespace Skywell
{
void atti_from_location(void);
void data_from_location(char* data, int len);

class Attitude
{
public:
  inline Attitude(Eigen::Vector3f angle = Eigen::Vector3f(0.0f, 0.0f, 0.0f)) : euler_angle_(angle){};
  ~Attitude(){};

  /**
   * @brief
   *
   * @param angle_static 传入角度值
   * @param angle_dynamic 传入角度值
   * @return Eigen::Vector3f 返回弧度值
   */
  Eigen::Vector3f euler_angle(Eigen::Vector3f const& angle_static, Eigen::Vector3f& angle_dynamic);
  void convert_euler_angle_to_quaternion(Eigen::Vector3f& angle_dynamic, Eigen::Quaternionf& quatern);
  void convert_quaternion_to_rotation_matrix(Eigen::Quaternionf& quatern, Eigen::Matrix3f& rotation_matrix);
  void convert_euler_angle_to_rotation_matrix(Eigen::Vector3f& euler_angle, Eigen::Matrix3f& rot_matrix);

  void convert_quaternion_to_euler_angle(Eigen::Quaternionf& quatern, Eigen::Vector3f& eul_angle);

  inline Eigen::Vector3f& get_euler_angle(void)
  {
    return euler_angle_;
  };

  inline void set_euler_angle(Eigen::Vector3f& angle)
  {
    euler_angle_(0) = angle(0);
    euler_angle_(1) = angle(1);
    euler_angle_(2) = angle(2);
    // std::cout << "dongtaizitai:" << euler_angle_ << std::endl;
    return;
  };

private:
  Eigen::Vector3f euler_angle_;
};

};  // namespace Skywell

#endif