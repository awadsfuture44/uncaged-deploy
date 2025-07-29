#!/bin/bash
apt update && apt install -y nginx git curl unzip
rm -rf /var/www/html/*
curl -o /var/www/html/index.html https://raw.githubusercontent.com/awadsfuture44/uncaged-deploy/main/index.html
systemctl restart nginx
