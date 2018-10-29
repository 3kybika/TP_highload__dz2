FROM python:3.7-alpine

RUN mkdir -p /usr/src/backend
WORKDIR /usr/src/backend
COPY . .

EXPOSE 80

RUN apk add sudo;\
    sudo apk add nginx;\
    pip install --no-cache-dir -r requirements.txt;\ 
    pip install --upgrade pip setuptools;\
    pip install -r requirements.txt

COPY default /etc/nginx/sites-enabled/default 
CMD sudo nginx -s reload;\
    python manage.py runserver localhost:8081 

