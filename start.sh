#!/bin/bash
sudo nginx -s reload
python manage.py runserver localhost:8081
