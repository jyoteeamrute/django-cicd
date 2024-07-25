#!/usr/bin/env bash

virtualenv /home/ubuntu/django-cicd/env
source /home/ubuntu/django-cicd/env/bin/activate
pip install -r /home/ubuntu/django-cicd/requirements.txt