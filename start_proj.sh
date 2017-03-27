#!/bin/bash
pyenv set local 3.5.1
pip install django
django-admin.py startproject tango_with_django_project
cd tango_with_django_project
python manage.py startapp rango
