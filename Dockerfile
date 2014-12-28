FROM resin/rpi-raspbian

RUN apt-get update -y
RUN apt-get install ddclient -y

COPY ddclient.conf /etc/ddclient.conf
COPY run.sh /run.sh

RUN chmod a+x run.sh

CMD ["/run.sh"]