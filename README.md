# Teradici Docker
Teradici + PulseSecure client on linux with optional nvidia-docker on nvidia GPUs and optional PulseSecure VPN. Adapted from http://www.teradici.com/web-help/pcoip_client/linux/3.8.1/reference/creating_a_docker_container/

## Getting Started
Install `docker` on your linux box. If you have a NVidia card please follow all the instructions there to install NVidia Docker: https://github.com/NVIDIA/nvidia-docker

## Build
### Without PulseSecure VPN
Run `./build.sh` to build the docker image using the current user name and id

### With PulseSecure VPN
Manually download the linux Ubuntu PulseSecure client by applying for a trial and click on the link sent by email to download the linux .deb installer and place it in this folder.

Run `./build.sh` to build the docker image using the current user name and id

## Run
Run `./run.sh` to run the teradici client

If you have the PulseSecure VPN reach to the PulseSecure UI, configure your connection and connect, leave that window open.

Reach to the Teradici window and connect away!
