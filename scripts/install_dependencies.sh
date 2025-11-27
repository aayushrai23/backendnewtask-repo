#!/bin/bash
set -e

echo "Installing dependencies..."

# Fix folder permissions before npm install
sudo chown -R ubuntu:ubuntu /var/www/html/backend

cd /var/www/html/backend

npm install --legacy-peer-deps
