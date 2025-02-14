from launch import LaunchDescription
from launch_ros.actions import Node

def generate_launch_description():
    return LaunchDescription([
        Node(
            package='video_streaming',
            executable='video_node_publisher',
            name='video_publisher',
            parameters=['config/video_publisher_params.yaml'],
            output="screen",
        )
    ])
