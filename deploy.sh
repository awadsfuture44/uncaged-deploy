#!/bin/bash

echo "🚀 Deploying The Legacy Reset Protocol..."

# Update and install essentials
apt update && apt install -y nginx unzip curl

# Pull web files
curl -L https://github.com/awadsfuture44/uncaged-deploy/raw/main/site.tar.gz -o /var/www/html/site.tar.gz

# Unpack and deploy
cd /var/www/html && tar -xzvf site.tar.gz && rm site.tar.gz

# Restart nginx
systemctl restart nginx

echo "✅ Deployment complete: http://legacyresetprotocol.com"
