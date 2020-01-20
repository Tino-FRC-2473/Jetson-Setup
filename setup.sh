#!/bin/bash

# Basic update
sudo apt-get update && sudo apt-get upgrade -y

# V4L
sudo apt-get install -y v4l-utils

# Python stuff
sudo apt-get install -y python3-pip python3-scipy python3-numpy python3-matplotlib

# Install VNC
sudo apt-get install -y tigervnc-standalone-server tigervnc-xorg-extension tigervnc-viewer

# Setup VNC password
vncserver