#!/bin/bash

# 导入工作空间的环境变量
source devel/setup.bash

# 启动 激光雷达
gnome-terminal -- bash -c "  roslaunch scout_bringup open_rslidar.launch ; exec bash"



sleep 5

gnome-terminal -- bash -c "rosrun fusion_of_camera_and_lidar  fusion_of_camera_and_lidar_node; exec bash"

sleep 3
# 在新的终端窗口中启动相机
gnome-terminal -- bash -c "roslaunch realsense2_camera rs_camera.launch; exec bash"



