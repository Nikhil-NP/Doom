#!/bin/bash

# x server connecting to docker
xhost +local:docker

#doom on x11 display forwarding
sudo docker run --rm \
     -v /tmp/.X11-unix:/tmp/.X11-unix \
     -e DISPLAY=$DISPLAY \
     doom-game

xhost -local:docker



# chmod +x run-doom.sh
#./run-doom.sh

