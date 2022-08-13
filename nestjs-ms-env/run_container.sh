#!/bin/bash
# 
# Script uses external environment variable (HOSTNAME), so you need run it like this:
# $ . ./run_container.sh


CONTAINER_IMAGE=nestjs-ms-env:1.0.0
LOCAL_WORKSPACE_PATH=/home/ustas/work/MyProjects/OpenCV/TestProject
CNT_WORKSPACE_PATH=/root

docker run -it --rm \
	-v $LOCAL_WORKSPACE_PATH:$CNT_WORKSPACE_PATH:Z \
	--hostname nestjs \
	$CONTAINER_IMAGE bash

