#!/bin/bash

# Basic update
sudo apt-get update && sudo apt-get upgrade -y

# Basic tools
sudo apt-get install -y screen tmux

# V4L and Video tools
sudo apt-get install -y v4l-utils guvcview

# Python stuff
sudo apt-get install -y python3-pip python3-scipy python3-numpy python3-matplotlib

# Install VNC
sudo apt-get install -y tigervnc-standalone-server tigervnc-xorg-extension tigervnc-viewer

# Setup VNC password
vncserver
