 #! /bin/sh
 
#cd /home/sky1/work/430_ws
#source devel/setup.bash 
#nohup roslaunch rslidar_pointcloud two_lidar.launch &
#sleep 2
#nohup roslaunch euclidean_cluster euclidean_cluster.launch &
while : 
do 
#echo "Current DIR is " $PWD 
rslidar_running=$(ps -ef |grep " rslidar_pointcloud two_lidar.launch" |grep -v "grep") 
if [ "$rslidar_running" ] ; then 
echo "lslidar_ch.launch service was already started by another way" 

else 
echo "lslidar_ch.launch service was not started" 
#echo "Starting lslidar_ch.launch service ..." 
cd /home/sky1/work/430_ws
source devel/setup.bash 
nohup roslaunch rslidar_pointcloud two_lidar.launch &
fi 

echo "Current DIR is " $PWD 
euclien_running=$(ps -ef |grep " euclidean_cluster euclidean_cluster.launch" |grep -v "grep") 
if [ "$euclien_running" ] ; then 
echo "euclidean_cluster.launch service was already started by another way" 

else 
echo "euclidean_cluster.launch service was not started" 
#echo "Starting euclidean_cluster.launch service ..." 

cd /home/sky1/work/430_ws
source devel/setup.bash 
nohup roslaunch euclidean_cluster euclidean_cluster.launch &
echo "euclidean_cluster.launch service was exited!" 
fi 
sleep 10 
done 
