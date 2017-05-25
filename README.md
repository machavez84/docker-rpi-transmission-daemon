This image is based on resin/rpi-raspbian

# To RUN the container:

$ docker run -d --name transmission-daemon -e "ENV_USERNAME=yourusername" -e "ENV_PASSWD=yourpasswd" -v /your/path:/media/downloads -p 9091:9091 machavez84/rpi-transmission-daemon

Where:

- --name Can be any name you want.
- -v /your/path should pint to a local path on the host.
- "yourusername" should be changed to the web UI user you want to set.
- "yourpasswd" should be changed to the pasword for the user.


