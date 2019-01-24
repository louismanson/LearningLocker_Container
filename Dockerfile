MAINTAINER Luis Hernandez <manson.louis@gmail.com>

FROM ubuntu:latest AS build-env
RUN apt-get update && apt-get upgrade
RUN apt-get install -y yum
RUN apt-get install -y curl
RUN curl -o- -L http://lrnloc.kr/installv2 > deployll.sh
RUN ["chmod", "+x", "deployll.sh"]
RUN /deployll.sh

#RUN apt-get -y -qq install curl git python build-essential xvfb apt-transport-https3
#RUN npm install -g yarn
#RUN npm install -g pm2
#RUN pm2 install pm2-logrotate
#RUN pm2 set pm2-logrotate:compress true
#RUN git clone https://github.com/LearningLocker/learninglocker.git
#RUN ls

