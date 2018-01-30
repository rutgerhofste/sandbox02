FROM ubuntu:16.04
MAINTAINER Rutger Hofste <rutger.hofste@wri.org>

RUN apt-get update
RUN apt-get install -y git wget bzip2 unzip

RUN wget https://repo.continuum.io/archive/Anaconda3-4.4.0-Linux-x86_64.sh 
RUN bash Anaconda3-4.4.0-Linux-x86_64.sh -b -p /opt/anaconda3

# setup folder structure for config file and keys for SSL
RUN mkdir /root/.jupyter
RUN mkdir /.keys
RUN chmod 400 /.keys
RUN mkdir /volumes/repos