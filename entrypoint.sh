#!/bin/sh
apk update
#apk add --update
apk add --no-cache python3 zip python3-dev gcc make postgresql-dev musl-dev libxml2-dev libxslt-dev g++ gcc-avr linux-headers curl libcurl
pip3 install --upgrade pip
pip3 install cython
pip3 install --no-build-isolation --no-cache-dir -r requirements.txt
#cd /var/www/messenger
#uwsgi --socket :8000 --wsgi-file messenger/wsgi.py
