FROM python:3.7-alpine

RUN mkdir -p /usr/src/backend
WORKDIR /usr/src/backend
COPY . .

RUN apk add sudo;\
    sudo apk add nginx;\
    sudo apk add sudo;\
    pip install --no-cache-dir -r requirements.txt;\ 
    pip install --upgrade pip setuptools;\
    pip install -r requirements.txt

COPY default /etc/nginx/sites-enabled/default 
ADD ./default /etc/nginx/nginx.conf
CMD sudo service nginx start;\
    python manage.py runserver localhost:8001 

EXPOSE 80
