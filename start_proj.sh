#!/bin/bash
pyenv local 3.5.1
git checkout 1a6fdc3a96d04065cf9b17f287001ce05183f701
pip install django
django-admin.py startproject tango_with_django_project
cd tango_with_django_project
python manage.py startapp rango
python manage.py  runserver
