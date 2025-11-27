#!/bin/bash
set -e

echo "Starting backend using PM2..."

cd /var/www/html/backend

# Stop old app if exists
pm2 delete backend-app || true

# Start fresh
pm2 start server.js --name backend-app

# Persist PM2 state
pm2 save

# Ensure PM2 starts on reboot
pm2 startup systemd -u ubuntu --hp /home/ubuntu
