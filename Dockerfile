FROM python:3.6

RUN mkdir -p /usr/src/backend
WORKDIR /usr/src/backend
COPY . .

EXPOSE 80

RUN apt-get update;\
    apt-get install sudo ;\
    sudo apt-get update ;\
    sudo apt-get -y install nginx;\ 
    pip install --no-cache-dir -r requirements.txt
COPY backend.conf /etc/nginx/conf.d/backend.conf4
RUN ["chmod", "+x", "./start.sh"]
CMD ["./start.sh"]
