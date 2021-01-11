// Generated by gencpp from file lslidar_ch_msgs/LslidarChScan.msg
// DO NOT EDIT!


#ifndef LSLIDAR_CH_MSGS_MESSAGE_LSLIDARCHSCAN_H
#define LSLIDAR_CH_MSGS_MESSAGE_LSLIDARCHSCAN_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <lslidar_ch_msgs/LslidarChPoint.h>

namespace lslidar_ch_msgs
{
template <class ContainerAllocator>
struct LslidarChScan_
{
  typedef LslidarChScan_<ContainerAllocator> Type;

  LslidarChScan_()
    : altitude(0.0)
    , points()  {
    }
  LslidarChScan_(const ContainerAllocator& _alloc)
    : altitude(0.0)
    , points(_alloc)  {
  (void)_alloc;
    }



   typedef float _altitude_type;
  _altitude_type altitude;

   typedef std::vector< ::lslidar_ch_msgs::LslidarChPoint_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::lslidar_ch_msgs::LslidarChPoint_<ContainerAllocator> >::other >  _points_type;
  _points_type points;





  typedef boost::shared_ptr< ::lslidar_ch_msgs::LslidarChScan_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lslidar_ch_msgs::LslidarChScan_<ContainerAllocator> const> ConstPtr;

}; // struct LslidarChScan_

typedef ::lslidar_ch_msgs::LslidarChScan_<std::allocator<void> > LslidarChScan;

typedef boost::shared_ptr< ::lslidar_ch_msgs::LslidarChScan > LslidarChScanPtr;
typedef boost::shared_ptr< ::lslidar_ch_msgs::LslidarChScan const> LslidarChScanConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lslidar_ch_msgs::LslidarChScan_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lslidar_ch_msgs::LslidarChScan_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace lslidar_ch_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'lslidar_ch_msgs': ['/home/avenue/Desktop/915_update_ws/src/lslidar_ch_128_20200608_newpub/lslidar_ch_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::lslidar_ch_msgs::LslidarChScan_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lslidar_ch_msgs::LslidarChScan_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lslidar_ch_msgs::LslidarChScan_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lslidar_ch_msgs::LslidarChScan_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lslidar_ch_msgs::LslidarChScan_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lslidar_ch_msgs::LslidarChScan_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lslidar_ch_msgs::LslidarChScan_<ContainerAllocator> >
{
  static const char* value()
  {
    return "673b5f47684afb86ac048e756a091cbb";
  }

  static const char* value(const ::lslidar_ch_msgs::LslidarChScan_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x673b5f47684afb86ULL;
  static const uint64_t static_value2 = 0xac048e756a091cbbULL;
};

template<class ContainerAllocator>
struct DataType< ::lslidar_ch_msgs::LslidarChScan_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lslidar_ch_msgs/LslidarChScan";
  }

  static const char* value(const ::lslidar_ch_msgs::LslidarChScan_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lslidar_ch_msgs::LslidarChScan_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Altitude of all the points within this scan\n\
float32 altitude\n\
\n\
# The valid points in this scan sorted by azimuth\n\
# from 0 to 359.99\n\
LslidarChPoint[] points\n\
\n\
================================================================================\n\
MSG: lslidar_ch_msgs/LslidarChPoint\n\
# Time when the point is captured\n\
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

  static const char* value(const ::lslidar_ch_msgs::LslidarChScan_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lslidar_ch_msgs::LslidarChScan_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.altitude);
      stream.next(m.points);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LslidarChScan_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lslidar_ch_msgs::LslidarChScan_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lslidar_ch_msgs::LslidarChScan_<ContainerAllocator>& v)
  {
    s << indent << "altitude: ";
    Printer<float>::stream(s, indent + "  ", v.altitude);
    s << indent << "points[]" << std::endl;
    for (size_t i = 0; i < v.points.size(); ++i)
    {
      s << indent << "  points[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::lslidar_ch_msgs::LslidarChPoint_<ContainerAllocator> >::stream(s, indent + "    ", v.points[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // LSLIDAR_CH_MSGS_MESSAGE_LSLIDARCHSCAN_H
