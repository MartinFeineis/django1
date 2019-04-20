#!/bin/bash
BYellow='\033[1;33m'
Color_Off='\033[0m'

sudo docker build --iidfile=image.id .
cat image.id
echo -e " ${BYellow}  build Dockerfile and cating imagid ${Color_Off}"
rm -f cont.id
echo -e " ${BYellow}  deleting cont.id File and running container ${Color_Off}"
sudo docker run -v $(pwd):/var/www/ -w /var/www/ -t $(cat image.id)  uwsgi --ini uwsgi.ini
