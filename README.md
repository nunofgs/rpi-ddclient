# DDclient for Raspberry Pi 2

This is a Dockerfile to set up [DDclient](http://sourceforge.net/p/ddclient/wiki/Home/).

# Usage

```shell
$ docker run \
  -e "DD_SERVER=www.cloudflare.com"
  -e "DD_LOGIN=foo@bar.com"
  -e "DD_PASSWORD=fdsfjkdshkh1jk3h2jkdhwe787iuh"
  -e "DD_HOSTS=myhost.com,another.host.com"
  nunofgs/rpi-ddclient
```
