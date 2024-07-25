#!/usr/bin/env bash
# python3 -m venv /home/ubuntu/django-cicd/env
# virtualenv /home/ubuntu/django-cicd/env
# source /home/ubuntu/django-cicd/env/bin/activate
# pip install -r /home/ubuntu/django-cicd/requirements.txt

#!/bin/bash

# Path to the virtual environment
VENV_DIR="/home/ubuntu/django-cicd/env"

# Create the virtual environment if it does not exist
if [ ! -d "$VENV_DIR" ]; then
    echo "Creating virtual environment at $VENV_DIR"
    python3 -m venv $VENV_DIR
fi

# Activate the virtual environment
source $VENV_DIR/bin/activate

# Upgrade pip and install dependencies
pip install --upgrade pip
pip install -r /home/ubuntu/django-cicd/requirements.txt
