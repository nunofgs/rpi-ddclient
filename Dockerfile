FROM resin/rpi-raspbian
MAINTAINER Nuno Sousa <nunofgs@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y update
RUN apt-get -y install ddclient

COPY run.sh /run.sh
RUN chmod a+x run.sh

CMD ["/run.sh"]
