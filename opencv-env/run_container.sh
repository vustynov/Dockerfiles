#!/bin/bash
# 
# Script uses external environment variable (HOSTNAME), so you need run it like this:
# $ . ./run_container.sh


CONTAINER_IMAGE=opencv-env:1.0.0
LOCAL_WORKSPACE_PATH=/home/ustas/work/MyProjects/OpenCV/TestProject
CNT_WORKSPACE_PATH=/root

docker run -it --rm \
	-e DISPLAY=${DISPLAY} \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-v $HOME/.Xauthority:/root/.Xauthority \
	-v $LOCAL_WORKSPACE_PATH:$CNT_WORKSPACE_PATH:Z \
	--hostname ${HOSTNAME} \
	--network=host \
	$CONTAINER_IMAGE bash

