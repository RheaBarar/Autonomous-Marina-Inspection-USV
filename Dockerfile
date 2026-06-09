FROM osrf/ros:jazzy-desktop-full

# Display utilities
RUN apt-get update && apt-get install -y \
    x11-apps \
    python3-pip \
    ros-jazzy-nav2-bringup \
    ros-jazzy-slam-toolbox \
    ros-jazzy-robot-localization \
    && rm -rf /var/lib/apt/lists/*

# Source ROS 2 automatically on container start
RUN echo "source /opt/ros/jazzy/setup.bash" >> /root/.bashrc

WORKDIR /root/marina_asv
