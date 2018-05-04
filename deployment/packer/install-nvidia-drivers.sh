#!/bin/bash -ex

# Update nvidia drivers
NVIDIA_DRIVERS_VERSION="384.125"
wget "http://us.download.nvidia.com/tesla/${NVIDIA_DRIVERS_VERSION}/NVIDIA-Linux-x86_64-${NVIDIA_DRIVERS_VERSION}.run"
sudo /bin/bash "./NVIDIA-Linux-x86_64-${NVIDIA_DRIVERS_VERSION}.run" -sq --install-libglvnd
sudo reboot
