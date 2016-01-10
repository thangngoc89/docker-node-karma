FROM thangngoc89/node-karma:latest

RUN add-apt-repository ppa:mc3man/trusty-media &&\
  apt-get update -y &&\
  apt-get install -y ffmpeg

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
