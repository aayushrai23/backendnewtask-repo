#!/bin/bash
set -e

echo "Installing dependencies..."

# Ensure ubuntu owns the backend directory
sudo chown -R ubuntu:ubuntu /var/www/html/backend
sudo chmod -R 755 /var/www/html/backend

cd /var/www/html/backend

npm install --legacy-peer-deps

echo "Dependencies installed successfully."
