
#!/usr/bin/bash

sudo systemctl daemon-reload
sudo rm -f /etc/nginx/sites-enabled/default

sudo cp /home/ubuntu/django-cicd/nginx/nginx.conf /etc/nginx/sites-available/django-cicd
# sudo ln -s /etc/nginx/sites-available/django-cicd /etc/nginx/sites-enabled/
sudo rm /etc/nginx/sites-enabled/django-cicd
sudo ln -s /etc/nginx/sites-available/django-cicd/etc/nginx/sites-enable

sudo nginx -t
sudo gpasswd -a www-data ubuntu
sudo systemctl restart nginx
# sudo systemctl reload nginx
sudo ls -l /run/gunicorn.sock

sudo systemctl status nginx
# sudo tail -f /var/log/nginx/error.log
