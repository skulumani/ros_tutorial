#!/bin/bash

echo "First we'll install ROS"

# sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

# sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

sudo apt-get update

echo "Now we'er installing the full ROS package"

sudo apt-get install ros-kinetic-desktop-full

echo "Now setup rosdep for dependencies"

sudo rosdep init
rosdep update

echo "Now setup ROS environment variables"

echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc
