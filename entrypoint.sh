#!/bin/bash
set -ex

# PulseSecure tries to override /etc/hosts which cannot be done directly inside a docker container
sudo bash -c "cp /etc/hosts /etc/docker_hosts && umount /etc/hosts && cp /etc/docker_hosts /etc/hosts"
sudo su - -c "/usr/local/pulse/pulseUi" &
pcoip-client
