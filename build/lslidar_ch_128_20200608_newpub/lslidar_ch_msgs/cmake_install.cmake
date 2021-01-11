# Install script for directory: /home/avenue/Desktop/915_update_ws/src/lslidar_ch_128_20200608_newpub/lslidar_ch_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/avenue/Desktop/915_update_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/lslidar_ch_msgs/msg" TYPE FILE FILES
    "/home/avenue/Desktop/915_update_ws/src/lslidar_ch_128_20200608_newpub/lslidar_ch_msgs/msg/LslidarChLayer.msg"
    "/home/avenue/Desktop/915_update_ws/src/lslidar_ch_128_20200608_newpub/lslidar_ch_msgs/msg/LslidarChPacket.msg"
    "/home/avenue/Desktop/915_update_ws/src/lslidar_ch_128_20200608_newpub/lslidar_ch_msgs/msg/LslidarChPoint.msg"
    "/home/avenue/Desktop/915_update_ws/src/lslidar_ch_128_20200608_newpub/lslidar_ch_msgs/msg/LslidarChScan.msg"
    "/home/avenue/Desktop/915_update_ws/src/lslidar_ch_128_20200608_newpub/lslidar_ch_msgs/msg/LslidarChSweep.msg"
    "/home/avenue/Desktop/915_update_ws/src/lslidar_ch_128_20200608_newpub/lslidar_ch_msgs/msg/LslidarChScanUnified.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/lslidar_ch_msgs/cmake" TYPE FILE FILES "/home/avenue/Desktop/915_update_ws/build/lslidar_ch_128_20200608_newpub/lslidar_ch_msgs/catkin_generated/installspace/lslidar_ch_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/avenue/Desktop/915_update_ws/devel/include/lslidar_ch_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/avenue/Desktop/915_update_ws/devel/share/roseus/ros/lslidar_ch_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/avenue/Desktop/915_update_ws/devel/share/common-lisp/ros/lslidar_ch_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/avenue/Desktop/915_update_ws/devel/share/gennodejs/ros/lslidar_ch_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/avenue/Desktop/915_update_ws/devel/lib/python2.7/dist-packages/lslidar_ch_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/avenue/Desktop/915_update_ws/devel/lib/python2.7/dist-packages/lslidar_ch_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/avenue/Desktop/915_update_ws/build/lslidar_ch_128_20200608_newpub/lslidar_ch_msgs/catkin_generated/installspace/lslidar_ch_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/lslidar_ch_msgs/cmake" TYPE FILE FILES "/home/avenue/Desktop/915_update_ws/build/lslidar_ch_128_20200608_newpub/lslidar_ch_msgs/catkin_generated/installspace/lslidar_ch_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/lslidar_ch_msgs/cmake" TYPE FILE FILES
    "/home/avenue/Desktop/915_update_ws/build/lslidar_ch_128_20200608_newpub/lslidar_ch_msgs/catkin_generated/installspace/lslidar_ch_msgsConfig.cmake"
    "/home/avenue/Desktop/915_update_ws/build/lslidar_ch_128_20200608_newpub/lslidar_ch_msgs/catkin_generated/installspace/lslidar_ch_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/lslidar_ch_msgs" TYPE FILE FILES "/home/avenue/Desktop/915_update_ws/src/lslidar_ch_128_20200608_newpub/lslidar_ch_msgs/package.xml")
endif()

