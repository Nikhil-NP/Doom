#!/bin/bash

# x server connecting to docker
xhost +local:docker

#doom on x11 display forwarding with persistent saves
sudo docker run --rm \
     -v /tmp/.X11-unix:/tmp/.X11-unix \
     -v $(pwd)/saves:/doom/saves \
     -e DISPLAY=$DISPLAY \
     doom

xhost -local:docker



# chmod +x run-doom.sh
#./run-doom.sh

