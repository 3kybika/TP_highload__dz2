FROM python:3.6
COPY . .

EXPOSE 80

RUN apt-get update;\
    apt-get install sudo ;\
    apt-get install apt-transport-https;\ 
    pip install --no-cache-dir -r requirements.txt;\    
    sudo apt-get update;\
    sudo apt-get -y install nginx-full 
RUN rm /etc/nginx/sites-enabled/default
COPY backend.conf /etc/nginx/conf.d/backend.conf
RUN ["chmod", "+x", "./start.sh"]
CMD ["./start.sh"]
