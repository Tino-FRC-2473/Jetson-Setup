# Jetson-Setup
Documentation and setup instructions for Jetson TX2

# Minimal setup instructions
When the Jetson boots up, it will automatically login to the nvidia user and create a WiFi network called `jetsontx2-#`. This network forward the Jetson's network connection, so if you plug the Jetson into an Ethernet port you can access the internet. 

Once you connect to the WiFi network from your local machine, you can start accessing the Jetson at the IP address `10.42.0.1`. 
* SSH: `ssh nvidia@10.42.0.1`
* VNC: `vnc://10.42.0.1` On Mac you can use the built-in VNC viewer by typing `open vnc://10.42.0.1` in terminal.
* Copy files to Jetson: `rsync <local_source_filename> nvidia@10.42.0.1:/home/nvidia/<destination_filename>`
* Copy files from Jetson: `rsync nvidia@10.42.0.1:/home/nvidia/<source_filename> <local_destination_filename>`

# Windows Instructions
For SSH access, use [PuTTY](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html). Tutorial: https://www.ssh.com/ssh/putty/windows

For VNC access, use [VNCViewer](https://www.realvnc.com/en/connect/download/viewer/windows/). Connect to `10.42.0.1`

# Setup a new Jetson
Install Jetpack with the [NVIDIA SDK Manager](https://developer.nvidia.com/nvidia-sdk-manager).

1. Run setup.sh
2. Enable autologin for the user. May need to manually edit `/etc/gdm3/custom.conf`
3. Create a new WiFi network from the top menu. Also set it to autoconnect
4. TODO: Setup .xprofile
