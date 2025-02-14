#!/bin/bash

gnome-terminal -- bash -c "

# Tab for radar launch
gnome-terminal --tab -- bash -c 'ros2 launch off_highway_premium_radar_sample driver_launch.py; exec bash';

# Tab for LiDAR launch
gnome-terminal --tab -- bash -c 'ros2 run sick_scan_xd sick_generic_caller ./src/sick_scan_xd/launch/sick_mrs_6xxx.launch; exec bash';

# Tab for Camera launch
gnome-terminal --tab -- bash -c 'ros2 launch video_streaming video_publisher_launch.py; exec bash';

# Tab for pcanview
gnome-terminal --tab -- bash -c 'pcanview; exec bash';

# Tab for transform Lidar and radar in one RViz instance
gnome-terminal --tab -- bash -c 'ros2 run tf2_ros static_transform_publisher 0.07 0 -0.14 0 0 0 base_link cloud; exec bash';

# Tab for transform camera to be viewed in RViz
gnome-terminal --tab -- bash -c 'ros2 run tf2_ros static_transform_publisher 0 0 0 0 0 0 camera_frame cloud; exec bash';

# Tab for RViz2
gnome-terminal --tab -- bash -c 'ros2 run rviz2 rviz2; exec bash';
"
exit
