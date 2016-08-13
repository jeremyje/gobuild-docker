FROM ubuntu:latest

MAINTAINER jeremyje@gmail.com

RUN apt-get -qq -y update
RUN apt-get -qq -y install snapcraft curl git
RUN apt-get -qq -y upgrade
RUN curl https://storage.googleapis.com/golang/go1.6.3.linux-amd64.tar.gz | sudo tar -C /usr/local -xz
RUN mkdir -p /usr/local/golibs
ENV PATH /usr/local/go/bin:/usr/local/golibs/bin:$PATH
ENV GOROOT /usr/local/go
