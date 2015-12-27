FROM nodesource/trusty:5.3.0

MAINTAINER Khoa Nguyen <hi@khoanguyen.me>

ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

RUN apt-get -y update
RUN apt-get install -y -q software-properties-common
#RUN apt-add-repository -y ppa:mozillateam/firefox-stable
RUN curl https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list
RUN apt-get update -y
RUN apt-get install -y -q \
  firefox \
  google-chrome-stable \
  Xvfb
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD xvfb.sh /etc/init.d/xvfb
ADD entrypoint.sh /entrypoint.sh

ENV DISPLAY :99.0
ENV CHROME_BIN /usr/bin/google-chrome
ENV FIREFOX_BIN /usr/bin/firefox

ENTRYPOINT ["/entrypoint.sh"]
