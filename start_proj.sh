#!/bin/bash
pyenv local 3.5.1
git checkout 1a6fdc3a96d04065cf9b17f287001ce05183f701
pip install django==1.10.6
django-admin.py startproject tango_with_django_project
cd tango_with_django_project
python manage.py startapp rango
git reset --hard origin/master
python manage.py migrate
python createUs.py
python manage.py makemigrations rango
python manage.py sqlmigrate rango 0001
python manage.py migrate

python manage.py runserver