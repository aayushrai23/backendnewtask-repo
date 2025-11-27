#!/bin/bash
set -e

cd /var/www/backend

echo "Installing production dependencies..."
npm install --production
