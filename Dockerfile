FROM python:3.6
COPY . .

EXPOSE 80

RUN apt-get update;\
    apt-get install sudo ;\
    sudo apt-get update ;\
    apt-get install apt-transport-https;\ 
    pip install --no-cache-dir -r requirements.txt;\
    sudo apt-get -y install nginx-full;\ 
    rm /etc/nginx/sites-enabled/default
COPY backend.conf /etc/nginx/conf.d/backend.conf4
RUN ["chmod", "+x", "./start.sh"]
CMD ["./start.sh"]
