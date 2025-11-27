#!/bin/bash
set -e

echo "Starting backend using PM2..."

cd /var/www/html/backend

# Stop old instance if exists
pm2 delete backend-app || true

# Start new instance
pm2 start server.js --name backend-app

# Save PM2 process list
pm2 save

echo "PM2 application started successfully."
