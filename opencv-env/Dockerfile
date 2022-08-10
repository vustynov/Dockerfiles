FROM ubuntu:20.04
MAINTAINER victor.ustynov@gmail.com
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y apt-utils
RUN apt-get install -y tzdata
RUN dpkg-reconfigure --frontend noninteractive tzdata
RUN apt-get install -y libopencv-dev g++ vim

