# LPK
Repository for Lesson/Lectorate Perception Kit

Using existing drivers from sensor manufacturers, together with the video package made by Frenk Schulten (github.com/ArieKanarie12) to show radar, LiDAR and camera in RViz. Additionaly, it houses a script to easily source all necessary terminals and bash commands.

# Prerequisites:
- Ubuntu 22.04 installed
- ROS2 (Humble distro) installed
- OpenCV (version 4.10)
- PCAN-View for Linux installed with corresponding drivers (used for sending CAN message to wake Bosch Radar, alternatively another method to send CAN message is also possible)

# Installation

## Clone repository with correct submodules:

```bash
git clone --recurse-submodules https://github.com/TJMas97/lpk.git
```

## Move to workspace

```bash
cd ./lpk
```

## Installation of dependencies

```bash
rosdep update && rosdep install --from-paths src --ignore-src -r -y
```

## Compile

Execute in your workspace

```bash
colcon build
```
