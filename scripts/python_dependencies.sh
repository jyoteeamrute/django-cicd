sudo chown -R ubuntu:ubuntu ~/django-cicd
virtualenv /home/ubuntu/django-cicd/env
source /home/ubuntu/django-cicd/env/bin/activate
pip install --upgrade pip
pip install setuptools whitenoise

pip install -r /home/ubuntu/django-cicd/requirements.txt