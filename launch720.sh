#!/bin/bash
# cd /home/sky1/work/430_ws
source devel/setup.bash

while :
do
rslidar_launch=$(ps -ef | grep "roslaunch rslidar_pointcloud two_lidar.launch"|grep -v "grep" | wc -l) 
lslidar_launch=$(ps -ef | grep "roslaunch lslidar_ch_decoder lslidar_ch.launch" |grep -v "grep" | wc -l) 
echo ${rslidar_launch}
echo ${lslidar_launch}
if [ ${rslidar_launch} -eq 1 ];then
		echo "rslidar_point is running!"
else
	#nohup roslaunch rslidar_launch two_lidar.launch > /dev/null 2>&1 &
	nohup  roslaunch rslidar_pointcloud two_lidar.launch  > /dev/null 2>&1 &
fi

if [ ${lslidar_launch} -eq 1 ];then
		echo "lslidar_launch is running!"
else
	nohup  roslaunch lslidar_ch_decoder lslidar_ch.launch > /dev/null 2>&1 &
fi
sleep 1
done
