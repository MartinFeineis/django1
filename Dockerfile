FROM alpine:latest  
LABEL name=django1
#WORKDIR /var/www/
COPY requirements.txt .
COPY entrypoint.sh .
RUN chmod +x entrypoint.sh
RUN ./entrypoint.sh
EXPOSE 8000



#FROM alpine:latest
#CMD ["/usr/bin/uwsgi", "--ini", "/var/www/uwsgi.ini"]
