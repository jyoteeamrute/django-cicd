#!/usr/bin/bash
sudo cp /home/ubuntu/django-cicd/gunicorn/gunicorn.socket  /etc/systemd/system/gunicorn.socket
sudo cp /home/ubuntu/django-cicd/gunicorn/gunicorn.service  /etc/systemd/system/gunicorn.service

sudo systemctl start gunicorn.service
sudo systemctl enable gunicorn.service
sudo systemctl status gunicorn

sudo systemctl start gunicorn.socket
sudo systemctl enable gunicorn.socket
sudo systemctl status gunicorn.socket
sudo systemctl daemon-reload

sudo systemctl restart gunicorn.service
sudo journalctl -u gunicorn
sudo chown www-data:www-data /run/gunicorn.sock
sudo chmod 660 /run/gunicorn.sock


sudo ls -l /run/gunicorn.sock

