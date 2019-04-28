#!/bin/bash
BYellow='\033[1;33m'
Color_Off='\033[0m'

containerName=ConDjango
ImageName=imgdjango

if [ "$1" == "-f" ]; then
  echo -e " ${BYellow} Building new Image ${Color_Off}"
  sudo docker build -t $ImageName --no-cache --iidfile=image.id . #Force build new image
elif [ "$1" == "-s" ]; then
  echo -e " ${BYellow} Stopping Docker Containers ${Color_Off}"
  #sudo docker stop $(sudo docker ps -q) #stop all running docker containers
  sudo docker stop $containerName #stop all running docker containers
  echo -e " ${BYellow} Deleting Docker Containers ${Color_Off}"
  #sudo docker stop $(sudo docker ps -q) #stop all running docker containers
  sudo docker rm $containerName
fi
sudo docker build -t $ImageName --iidfile=image.id .
#sudo docker tag $(cat image.id) djangoMar
cat image.id
echo -e " ${BYellow}  build Dockerfile and cating imagid ${Color_Off}"
rm -f cont.id
echo -e " ${BYellow}  deleting cont.id File and running container ${Color_Off}"
sudo docker run -d --name $containerName -v $(pwd):/var/www/ -w /var/www/ -t $(cat image.id)  uwsgi --ini uwsgi.ini
# Run Migrations
#sudo docker exec ConDjango python3 messenger/manage.py migrate" >> build_d.sh
