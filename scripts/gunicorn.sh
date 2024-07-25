#!/usr/bin/bash
sudo cp /home/ubuntu/django-cicd/gunicorn/gunicorn.socket  /etc/systemd/system/gunicorn.socket
sudo cp /home/ubuntu/django-cicd/gunicorn/gunicorn.service  /etc/systemd/system/gunicorn.service

sudo systemctl start gunicorn.service
sudo systemctl enable gunicorn.service
sudo systemctl status gunicorn

sudo journalctl -u gunicorn
sudo ls -l /run/gunicorn.sock

