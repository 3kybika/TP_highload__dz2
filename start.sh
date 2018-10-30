#!/bin/bash
sudo service nginx start
python manage.py runserver localhost:8081
