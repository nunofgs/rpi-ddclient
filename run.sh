#!/bin/bash

mkdir -p /etc/ddclient /var/cache/ddclient
cd /etc/ddclient

touch ddclient.conf

echo "pid=/var/run/ddclient.pid" > ddclient.conf
echo "use=web" >> ddclient.conf
echo "protocol=cloudflare" >> ddclient.conf
echo "server=$DD_SERVER" >> ddclient.conf
echo "login=$DD_LOGIN" >> ddclient.conf
echo "password=$DD_PASSWORD" >> ddclient.conf
echo "zone=$DD_ZONE" >> ddclient.conf
echo "$DD_HOSTS" >> ddclient.conf

while true
do
  ddclient -daemon=0 -verbose | grep -i 'success'
  sleep 3600
done
