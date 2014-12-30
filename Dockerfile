FROM resin/rpi-raspbian

RUN apt-get -y update
RUN apt-get -y install ddclient

COPY run.sh /run.sh
RUN chmod a+x run.sh

CMD ["/run.sh"]
