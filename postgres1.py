import psycopg2, json

with open("creds.json", "r") as cred:
    data = json.loads(cred.read())

passwd = data['postgres']['passwd']
user = data['postgres']['user']
db = data['postgres']['db']
host = data['postgres']['host']
#print(json.dumps(data, sort_keys=True, indent=4))
conn = psycopg2.connect(host=host,dbname=db, user=user ,password=passwd)
