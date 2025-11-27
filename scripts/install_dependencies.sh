#!/bin/bash
set -e

echo "Installing dependencies..."
cd /var/www/html/backend

npm install --legacy-peer-deps
