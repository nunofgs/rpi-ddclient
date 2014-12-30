#!/bin/bash

cd /etc
touch ddclient.conf
echo "pid=/var/run/ddclient.pid" > ddclient.conf
echo "protocol=dyndns2" >> ddclient.conf
echo "use=web" >> ddclient.conf
echo "ssl=no" >> ddclient.conf
echo "server=$DD_SERVER" >> ddclient.conf
echo "login=$DD_LOGIN" >> ddclient.conf
echo "password=$DD_PASSWORD" >> ddclient.conf
echo "$DD_HOSTS" >> ddclient.conf

while true
do
  ddclient -daemon=0 -verbose | grep -i 'success'
  sleep 3600
done
