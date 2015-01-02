# DynDNS update with ddclient on the RaspberryPi

This docker image is meant to update your custom DynDNS provider with the current ip address of your RaspberryPi. For usage you have to set the following environmental variables in your docker container during startup.

- DD_SERVER=server.dyndns-service.com/update
- DD_LOGIN=login-name
- DD_PASSWORD='secret'
- DD_HOSTS=host.to.update,another-host.to.update

I suppose to store this in a seperate file and start the container regarding this file.

`docker run -d --env-file=env.list cbeulke/rpi-ddclient`

See the example env.list contained in this repo.