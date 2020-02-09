#!/bin/bash

sudo apt-get install git libssl-dev libusb-1.0-0-dev pkg-config libgtk-3-dev -y
sudo apt-get install libglfw3-dev libgl1-mesa-dev libglu1-mesa-dev -y

pushd ~
git clone https://github.com/IntelRealSense/librealsense.git
pushd librealsense/
./scripts/setup_udev_rules.sh
./scripts/patch-realsense-ubuntu-lts.sh

mkdir build
pushd build
cmake ../ -DBUILD_PYTHON_BINDINGS=bool:true -DBUILD_EXAMPLES=true
sudo make -j4
sudo make install
popd
popd
popd

echo "export PYTHONPATH=\$PYTHONPATH:/usr/local/lib" >> ~/.profile
source ~/.profile
