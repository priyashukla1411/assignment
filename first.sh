#!/bin/bash

cd /home/ubuntu
sudo apt update
sudo apt install python3-pip python3-dev nginx -y
pip install virtualenv
virtualenv env
source env/bin/activate
pip install django gunicorn
