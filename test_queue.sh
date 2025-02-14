#!/bin/bash

gnome-terminal -- bash -c "

gnome-terminal --tab -- bash -c 'ros2 run rviz2 rviz2; exec bash';

gnome-terminal --tab -- bash -c 'pcanview; exec bash';

gnome-terminal --tab -- bash -c 'ros2 launch off_highway_premium_radar_sample driver_launch.py; exec bash';

gnome-terminal --tab -- bash -c 'ros2 run sick_scan_xd sick_generic_caller ./src/sick_scan_xd/launch/sick_mrs_6xxx.launch; exec bash';

gnome-terminal --tab -- bash -c 'ros2 launch video_streaming video_publisher_launch.py; exec bash';
"
exit
