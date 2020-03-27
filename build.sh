#!/bin/bash
set -ex

if command -v nvidia-smi; then
    echo "NVidia driver detected, using nvidia/cudagl image"
    UPSTREAM_IMAGE=nvidia/cudagl:10.1-runtime-ubuntu18.04
else
    echo "NVidia driver not found, using regular ubuntu image"
    UPSTREAM_IMAGE=ubuntu:18.04
fi

if ls *.deb 1> /dev/null 2>&1; then
    echo "Pulse secure installer detected"
    ENABLE_PULSESECURE=1
else
    echo "Pulse secure installer not detected, download .deb file and place in folder if needed"
    ENABLE_PULSESECURE=0
fi

docker build --progress plain \
    -t pcoip-client \
    --build-arg USERNAME=$LOGNAME \
    --build-arg PUID=$(id -u) \
    --build-arg PGID=$(id -g) \
    --build-arg UPSTREAM_IMAGE=${UPSTREAM_IMAGE} \
    --build-arg ENABLE_PULSESECURE=${ENABLE_PULSESECURE} \
    .
