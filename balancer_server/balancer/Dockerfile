FROM nginx:latest

EXPOSE 80

RUN apt-get update;\
    apt-get -y install nginx ;\
    rm -rf /etc/nginx/nginx.conf

ADD ./nginx.conf /etc/nginx/nginx.conf
