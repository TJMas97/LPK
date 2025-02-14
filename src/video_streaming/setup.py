import os
from glob import glob
from setuptools import find_packages, setup

package_name = 'video_streaming'

setup(
    name=package_name,
    version='0.0.0',
    packages=find_packages(exclude=['test']),
    data_files=[
    	(os.path.join('share', package_name), glob('launch/*.launch.py')),
        ('share/ament_index/resource_index/packages',
            ['resource/' + package_name]),
        ('share/' + package_name, ['package.xml']),
        ('share/' + package_name + '/launch', ['launch/video_publisher_launch.py']),
    ],
    install_requires=['setuptools'],
    zip_safe=True,
    maintainer='frenk',
    maintainer_email='frenk@todo.todo',
    description='Video streaming via ROS2',
    license='Video streaming via ROS2',
    tests_require=['pytest'],
    entry_points={
        'console_scripts': [
            'video_node_publisher = video_streaming.video_publisher:main',
        ],
    },
)

