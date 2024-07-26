#!/usr/bin/env bash
sudo apt-get update
sudo apt-get install python3-venv python3-pip

sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/lib/dpkg/lock
sudo rm /var/cache/apt/archives/lock
sudo dpkg --configure -a

sudo apt-get update
sudo apt-get install python3-full
sudo apt-get install pipx

sudo apt install -y python3-pip
sudo apt install -y nginx
sudo apt install -y virtualenv
pip install setuptools
pip install whitenoise
# pip install distutils
#!/usr/bin/env bash
