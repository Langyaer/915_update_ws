#add_library(rslidar_data rawdata.cc)
#target_link_libraries(rslidar_data
#    attitude
#    ${catkin_LIBRARIES}
#    ${libpcap_LIBRARIES})
#
#add_library(rslidar_point convert.cc)
#target_link_libraries(rslidar_point
#    rslidar_data
#    attitude
#    ${catkin_LIBRARIES})
#
#
#add_library(attitude attitude.cpp para_config.cpp)
#target_link_libraries(
#    attitude
#    ${catkin_LIBRARIES})
#
#add_library(cloud_nodelet cloud_nodelet.cc)
#target_link_libraries(cloud_nodelet rslidar_point
#attitude
#                      ${catkin_LIBRARIES})
#
#add_executable(cloud_node cloud_node.cc)
#
#if(catkin_EXPORTED_TARGETS)
#  add_dependencies(rslidar_data 
#  attitude
#  ${catkin_EXPORTED_TARGETS})
#endif()
#
#target_link_libraries(cloud_node
#    rslidar_point
#    attitude
#    ${catkin_LIBRARIES}
#    ${libpcap_LIBRARIES})


########################################################################

cmake_minimum_required(VERSION 2.8.3)
project(cloud_node)
add_compile_options(-std=c++11)

add_executable(cloud_node cloud_node.cc )

add_library(cloud_nodelet 
cloud_nodelet.cc 
attitude.cpp 
#para_config.cpp 
protocal_32960.cpp
convert.cc 
rawdata.cc 
ntoh.cpp
tcp_client.cpp)


#用于生成自定义msg头文件
add_dependencies(cloud_node
  ${${PROJECT_NAME}_EXPORTED_TARGETS}
  ${catkin_EXPORTED_TARGETS}
)
target_link_libraries(cloud_node 
    cloud_nodelet
    ${catkin_LIBRARIES}
    ${libpcap_LIBRARIES})

if(catkin_EXPORTED_TARGETS)
  add_dependencies(cloud_node 
  ${catkin_EXPORTED_TARGETS})
endif()
    
