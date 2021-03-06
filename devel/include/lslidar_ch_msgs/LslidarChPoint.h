// Generated by gencpp from file lslidar_ch_msgs/LslidarChPoint.msg
// DO NOT EDIT!


#ifndef LSLIDAR_CH_MSGS_MESSAGE_LSLIDARCHPOINT_H
#define LSLIDAR_CH_MSGS_MESSAGE_LSLIDARCHPOINT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace lslidar_ch_msgs
{
template <class ContainerAllocator>
struct LslidarChPoint_
{
  typedef LslidarChPoint_<ContainerAllocator> Type;

  LslidarChPoint_()
    : time(0.0)
    , x(0.0)
    , y(0.0)
    , z(0.0)
    , vertical_angle(0.0)
    , azimuth(0.0)
    , distance(0.0)
    , intensity(0.0)
    , line(0)  {
    }
  LslidarChPoint_(const ContainerAllocator& _alloc)
    : time(0.0)
    , x(0.0)
    , y(0.0)
    , z(0.0)
    , vertical_angle(0.0)
    , azimuth(0.0)
    , distance(0.0)
    , intensity(0.0)
    , line(0)  {
  (void)_alloc;
    }



   typedef float _time_type;
  _time_type time;

   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;

   typedef float _z_type;
  _z_type z;

   typedef float _vertical_angle_type;
  _vertical_angle_type vertical_angle;

   typedef float _azimuth_type;
  _azimuth_type azimuth;

   typedef float _distance_type;
  _distance_type distance;

   typedef float _intensity_type;
  _intensity_type intensity;

   typedef uint32_t _line_type;
  _line_type line;





  typedef boost::shared_ptr< ::lslidar_ch_msgs::LslidarChPoint_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lslidar_ch_msgs::LslidarChPoint_<ContainerAllocator> const> ConstPtr;

}; // struct LslidarChPoint_

typedef ::lslidar_ch_msgs::LslidarChPoint_<std::allocator<void> > LslidarChPoint;

typedef boost::shared_ptr< ::lslidar_ch_msgs::LslidarChPoint > LslidarChPointPtr;
typedef boost::shared_ptr< ::lslidar_ch_msgs::LslidarChPoint const> LslidarChPointConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lslidar_ch_msgs::LslidarChPoint_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lslidar_ch_msgs::LslidarChPoint_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace lslidar_ch_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'lslidar_ch_msgs': ['/home/avenue/Desktop/915_update_ws/src/lslidar_ch_128_20200608_newpub/lslidar_ch_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::lslidar_ch_msgs::LslidarChPoint_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lslidar_ch_msgs::LslidarChPoint_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lslidar_ch_msgs::LslidarChPoint_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lslidar_ch_msgs::LslidarChPoint_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lslidar_ch_msgs::LslidarChPoint_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lslidar_ch_msgs::LslidarChPoint_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lslidar_ch_msgs::LslidarChPoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "724d832461be579d3f6441356f76032b";
  }

  static const char* value(const ::lslidar_ch_msgs::LslidarChPoint_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x724d832461be579dULL;
  static const uint64_t static_value2 = 0x3f6441356f76032bULL;
};

template<class ContainerAllocator>
struct DataType< ::lslidar_ch_msgs::LslidarChPoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lslidar_ch_msgs/LslidarChPoint";
  }

  static const char* value(const ::lslidar_ch_msgs::LslidarChPoint_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lslidar_ch_msgs::LslidarChPoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Time when the point is captured\n\
float32 time\n\
\n\
# Converted distance in the sensor frame\n\
float32 x\n\
float32 y\n\
float32 z\n\
\n\
# Raw measurement from Leishen Ch\n\
float32 vertical_angle\n\
float32 azimuth\n\
float32 distance\n\
float32 intensity\n\
uint32  line\n\
";
  }

  static const char* value(const ::lslidar_ch_msgs::LslidarChPoint_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lslidar_ch_msgs::LslidarChPoint_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.time);
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
      stream.next(m.vertical_angle);
      stream.next(m.azimuth);
      stream.next(m.distance);
      stream.next(m.intensity);
      stream.next(m.line);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LslidarChPoint_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lslidar_ch_msgs::LslidarChPoint_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lslidar_ch_msgs::LslidarChPoint_<ContainerAllocator>& v)
  {
    s << indent << "time: ";
    Printer<float>::stream(s, indent + "  ", v.time);
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<float>::stream(s, indent + "  ", v.z);
    s << indent << "vertical_angle: ";
    Printer<float>::stream(s, indent + "  ", v.vertical_angle);
    s << indent << "azimuth: ";
    Printer<float>::stream(s, indent + "  ", v.azimuth);
    s << indent << "distance: ";
    Printer<float>::stream(s, indent + "  ", v.distance);
    s << indent << "intensity: ";
    Printer<float>::stream(s, indent + "  ", v.intensity);
    s << indent << "line: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.line);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LSLIDAR_CH_MSGS_MESSAGE_LSLIDARCHPOINT_H
