# django1
setup project with
Installier virtualenv um die OS/System python installation unabhaengig von der Entwicklungspython zu machen (best practices)
```
pip install --user virtualenv
```
Clone das Projekt
```
git clone git@github.com:MartinFeineis/django1.git
pyenv local 3.5.2
pip install -r requirements.txt
cd messenger
python manage.py runserver
```
Erstelle eine virtuelle python umgebung
```
virtualenv -p python3 venv
```
aktiviere die virtuelle python Umgebung
```
source venv/bin/activate
```
Installiere Abhaengigkeite
```
pip install -r requirements.txt
```
 6539  sudo docker exec django1_django_1 python3 /var/www/messenger/manage.py migrate
 6540  history | tail -n 20
