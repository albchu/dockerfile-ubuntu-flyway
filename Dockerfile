FROM ubuntu:18.04
MAINTAINER Albert Chu <albert.chu@replicon.com>

# Setup python and java and base system
ENV DEBIAN_FRONTEND noninteractive
ENV LANG=en_US.UTF-8

RUN apt-get -q -y update && \
  apt-get upgrade -q -y && \
  apt-get install -q -y wget &&\ 
  wget -O flyway.tar.gz https://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/5.0.7/flyway-commandline-5.0.7-linux-x64.tar.gz && \
  tar -xzvf flyway.tar.gz 
ENV PATH $PATH:/flyway-5.0.7