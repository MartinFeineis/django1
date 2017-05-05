import json, os, sys, django
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "tango_with_django_project.settings")

from django.contrib.auth.models import User

with open("creds.json","r") as cred:
	data = json.loads(cred.read())

u = User(username=data['django_superuser']['name'])
u.set_password(data['django_superuser']['password'])
u.is_superuser = True
u.is_staff = True
u.save()
