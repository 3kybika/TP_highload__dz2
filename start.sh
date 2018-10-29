#!/bin/bash
sudo nginx -s reload
cd test_server
python manage.py runserver localhost:8081
