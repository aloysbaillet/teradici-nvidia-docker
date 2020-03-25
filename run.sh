#!/bin/bash
mkdir -p .logs
mkdir -p .config

docker run -it --gpus=all --rm -v $(pwd)/.config/:/home/$LOGNAME/.config/Teradici -v $(pwd)/.logs:/tmp/Teradici/$LOGNAME/PCoIPClient/logs -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY pcoip-client
