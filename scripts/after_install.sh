#!/usr/bin/bash

echo "Pull Finished"
sudo systemctl daemon-reload
sudo systemctl restart nginx
sudo journalctl -u gunicorn
