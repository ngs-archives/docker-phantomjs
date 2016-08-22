FROM ubuntu:14.04
MAINTAINER Atsushi Nagase<a@ngs.io>

ENV PHANTOM_JS phantomjs-2.1.1-linux-x86_64

RUN apt-get update -y && \
  apt-get -y --no-install-recommends install \
  build-essential \
  curl \
  chrpath \
  libssl-dev \
  libxft-dev \
  libfreetype6 \
  libfreetype6-dev \
  libfontconfig1 \
  libfontconfig1-dev


RUN mkdir -p /var/src && \
  cd /var/src && \
  curl -Lsko /var/src/$PHANTOM_JS.tar.bz2 https://bitbucket.org/ariya/phantomjs/downloads/$PHANTOM_JS.tar.bz2 && \
  tar xjf $PHANTOM_JS.tar.bz2 && \
  mv $PHANTOM_JS/bin/phantomjs /usr/bin && \
  rm -rf $PHANTOMJS

ENTRYPOINT /usr/bin/phantomjs







