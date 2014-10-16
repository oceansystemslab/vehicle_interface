vehicle_interface
=================

This repo holds the ROS package for interfacing with Autonomous Vehicle Software (AVS). It contains messages and services for interacting with the principal nodes of the AVS.

Guidelines
----------

This package follows the ROS conventions. Messages are created in the `msg` folder and services in the `srv` one. Make sure your have a working copy of the `master` branch before writing your own scripts that use this interface. Initially this repo is providing packages using the `rosbuild` build system until the OSL vehicles are migrated to an upgraded version of the ROS. Later the `rosbuild` support is going to be dropped and the `master` branch will offer a _catkinized_ package format.
