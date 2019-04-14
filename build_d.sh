#!/bin/bash
BYellow='\033[1;33m'
Color_Off='\033[0m'

cp /home/wolle/nasghoul/data/django_secrets/* .
echo -e " ${BYellow} Copied secrets ${Color_Off}"
rm app.zip
echo -e " ${BYellow} deleted app.zip and building now ${Color_Off}"
zip -r app.zip messenger/* uwsgi.ini requirements.txt entrypoint.sh
echo -e " ${BYellow} zipped everything up ${Color_Off}"
sudo docker build --iidfile=image.id .
cat image.id
echo -e " ${BYellow}  build Dockerfile and cating imagid ${Color_Off}"
rm -f cont.id
echo -e " ${BYellow}  deleting cont.id File and running container ${Color_Off}"
sudo docker run -d -i -p 80:80 --cidfile=cont.id -t $(cat image.id) supervisord
#sudo docker run -i --cidfile=cont.id  -p 80:80 -t $(cat image.id) /bin/sh
