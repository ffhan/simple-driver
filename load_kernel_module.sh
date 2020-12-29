#!/bin/bash

sudo make load # load the driver as a kernel module
# create a character device for our device
sudo mknod /dev/simple-driver c $(sudo cat /proc/devices | grep Simple | cut -d ' ' -f1) 0
