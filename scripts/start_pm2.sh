#!/bin/bash
set -e

echo "Starting backend using PM2..."

cd /var/www/html/backend

pm2 delete backend-app || true
pm2 start server.js --name backend-app
pm2 save

echo "PM2 application started successfully."
