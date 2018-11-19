FROM python:3.6
COPY . .

RUN apt-get update;\
    apt-get install apt-transport-https;\ 
    pip install --no-cache-dir -r requirements.txt;\    

RUN ["chmod", "+x", "./start.sh"]
CMD ["./start.sh"]
