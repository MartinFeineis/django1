#!/bin/bash
BYellow='\033[1;33m'
Color_Off='\033[0m'

if [ "$1" == "-f" ]
then
  sudo docker build --no-cache --iidfile=image.id .
elif [ "$1" == "-s"]
then
  sudo docker stop $(sudo docker ps -q) #stop all running docker containers
fi
sudo docker build -t djangorest --iidfile=image.id .
#sudo docker tag $(cat image.id) djangoMar
cat image.id
echo -e " ${BYellow}  build Dockerfile and cating imagid ${Color_Off}"
rm -f cont.id
echo -e " ${BYellow}  deleting cont.id File and running container ${Color_Off}"
sudo docker run -v $(pwd):/var/www/ -w /var/www/ -t $(cat image.id)  uwsgi --ini uwsgi.ini
