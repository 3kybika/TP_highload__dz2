#!/bin/bash
sudo nginx -s start
python manage.py runserver localhost:8081
