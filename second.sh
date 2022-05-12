#!/bin/bash 

cd /home/ubuntu

source env/bin/activate
sudo fuser -k 8000/tcp

gunicorn --bind 0.0.0.0:8000 first.wsgi &>/dev/null & 


mv /home/ubuntu/NGINX /etc/nginx/sites-available 

sudo ln -s /etc/nginx/sites-available/NGINX /etc/nginx/sites-enabled/

sudo rm /etc/nginx//sites-enabled/default

sudo systemctl restart nginx


