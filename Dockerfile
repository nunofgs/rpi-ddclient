FROM resin/rpi-raspbian
MAINTAINER Nuno Sousa <nunofgs@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y update
RUN apt-get install -qy cpanminus libio-socket-ssl-perl libjson-any-perl

COPY ddclient /usr/bin/ddclient
COPY run.sh /run.sh

CMD ["/run.sh"]
