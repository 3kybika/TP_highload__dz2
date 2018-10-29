FROM python:3.6

RUN mkdir -p /usr/src/backend
WORKDIR /usr/src/backend
COPY . .

EXPOSE 80

RUN apt-get update;\
    apt-get install sudo ;\
    sudo apt-get -y install nginx;\ 
    pip install --no-cache-dir -r requirements.txt;\ 
    pip install --upgrade pip setuptools;\

COPY default /etc/nginx/sites-enabled/default 
CMD ["sudo nginx -s reload;\
    python manage.py runserver localhost:8081 "]
