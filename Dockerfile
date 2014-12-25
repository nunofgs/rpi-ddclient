FROM resin/rpi-raspbian

RUN apt-get -y update
RUN apt-get -y install ddclient

RUN ddclient -daemon=1 -noquiet -verbose -debug

CMD ["/bin/bash"]