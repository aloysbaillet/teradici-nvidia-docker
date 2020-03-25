#!/bin/bash
set -ex

docker build -t pcoip-client --build-arg USERNAME=$LOGNAME --build-arg PUID=$(id -u) --build-arg PGID=$(id -g) .
