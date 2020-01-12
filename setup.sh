#!/bin/bash

# Basic update
sudo apt-get update && sudo apt-get upgrade

# Python stuff
sudo apt-get install python3-pip python3-scipy python3-numpy python3-matplotlib

# Install VNC
sudo apt-get install tigervnc-standalone-server tigervnc-xorg-extension tigervnc-viewer

# Setup VNC password
vncserver