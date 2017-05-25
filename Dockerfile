#Transmission-daemon for Rpi
#Version 0.3

FROM resin/rpi-raspbian
LABEL maintainer  Manuel A. Chavez M.

#Torrents download and finished dir
VOLUME /media/downloads

#Username and passwd for transmission web interface. You must pass this parameters with the RUN command
ENV ENV_USERNAME=admin ENV_PASSWD=admin

#Install Software
RUN apt-get update && apt-get install -y transmission-daemon && apt-get clean

#Expose web interface port
EXPOSE 9091

ENTRYPOINT  transmission-daemon --foreground --rpc-bind-address=0.0.0.0 --allowed="*" --dht --utp --portmap --download-dir=/media/downloads --incomplete-dir=/media/downloads --auth --username=$ENV_USERNAME --password=$ENV_PASSWD
