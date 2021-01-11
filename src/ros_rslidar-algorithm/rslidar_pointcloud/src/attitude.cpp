#include "attitude.h"
#include "rawdata.h"
#include "protocal_32960.h"
#include "ntoh.h"
Skywell::CMan32960 tcp_32960_header(5000);
namespace Skywell
{
void data_from_location(char* data, int len)
{
  tcp_32960_header.add_str_buf((unsigned char*)data, len);
}

void atti_from_location(void)
{
  unsigned char atti_recv_buf[200];
  Eigen::Vector3f euler_angle;
  while (1)
  {
    // printf("enter rs while \n");
    // memset(atti_recv_buf, 0, 200);
    int rtn = tcp_32960_header.search_one_32960(atti_recv_buf, 200);
    // printf("rtn: %ld\n", rtn);
    if (rtn > 0)
    {
      if (sizeof(atti_recv_buf) == 0)
      {
        throw "get attitude from location  error !!!";
      }

      memcpy(&euler_angle(0), &atti_recv_buf[56 + 11], 4);
      memcpy(&euler_angle(1), &atti_recv_buf[60 + 11], 4);
      memcpy(&euler_angle(2), &atti_recv_buf[64 + 11], 4);

      euler_angle(0) = htonf(euler_angle(0));
      euler_angle(1) = htonf(euler_angle(1));
      euler_angle(2) = htonf(euler_angle(2));

      // euler_angle(0) = htonf(euler_angle(0));
      // euler_angle(1) = htonf(euler_angle(1));
      // euler_angle(2) = htonf(euler_angle(2));

      // std::cout << "euler_angle atti_from_location ::" << euler_angle << std::endl;
      attitude_truck.set_euler_angle(euler_angle);
      // std::cout << "dongtaizitai:" << euler_angle << std::endl;
    }

    usleep(10 * 1000);
  }

  return;
}

Eigen::Vector3f Attitude::euler_angle(Eigen::Vector3f const& euler_angle_static, Eigen::Vector3f& euler_angle_dynamic)
{
  Eigen::Vector3f angle_out(0.0f, 0.0f, 0.0f);
  angle_out(0) = (euler_angle_static(0)) * DEG_TO_RAD + euler_angle_dynamic(0);
  angle_out(1) = (euler_angle_static(1)) * DEG_TO_RAD + euler_angle_dynamic(1);
  angle_out(2) = (euler_angle_static(2)) * DEG_TO_RAD;
  return angle_out;
}
void Attitude::convert_euler_angle_to_quaternion(Eigen::Vector3f& angle_dynamic, Eigen::Quaternionf& quatern)
{
  //   Eigen::AngleAxisf rollAngle(AngleAxisf(euler_angle_dynamic(2), Vector3f::UnitX()));
  //   Eigen::AngleAxisf pitchAngle(AngleAxisf(euler_angle_dynamic(1), Vector3f::UnitY()));
  //   Eigen::AngleAxisf yawAngle(AngleAxisf(euler_angle_dynamic(0), Vector3f::UnitZ()));
  //   quatern = yawAngle * pitchAngle * rollAngle;

  Eigen::AngleAxisf rollAngle(Eigen::AngleAxisf(angle_dynamic(0), Eigen::Vector3f::UnitX()));
  Eigen::AngleAxisf pitchAngle(Eigen::AngleAxisf(angle_dynamic(1), Eigen::Vector3f::UnitY()));
  Eigen::AngleAxisf yawAngle(Eigen::AngleAxisf(angle_dynamic(2), Eigen::Vector3f::UnitZ()));
  quatern = yawAngle * pitchAngle * rollAngle;

  return;
}

void Attitude::convert_euler_angle_to_rotation_matrix(Eigen::Vector3f& euler_angle, Eigen::Matrix3f& rot_matrix)
{
  rot_matrix = Eigen::AngleAxisf(euler_angle[2], Eigen::Vector3f::UnitZ()) *
               Eigen::AngleAxisf(euler_angle[1], Eigen::Vector3f::UnitY()) *
               Eigen::AngleAxisf(euler_angle[0], Eigen::Vector3f::UnitX());

  return;
}

void Attitude::convert_quaternion_to_rotation_matrix(Eigen::Quaternionf& quatern, Eigen::Matrix3f& rotation_matrix)
{
  //   Eigen::Matrix3f rotation_matrix;
  rotation_matrix = quatern.matrix();
  return;
}

void Attitude::convert_quaternion_to_euler_angle(Eigen::Quaternionf& quatern, Eigen::Vector3f& eul_angle)
{
  eul_angle = quatern.matrix().eulerAngles(2, 1, 0);
  return;
}

};  // namespace Skywell
