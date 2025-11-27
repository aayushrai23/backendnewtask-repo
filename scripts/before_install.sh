#!/bin/bash
set -e

echo "Stopping backend if running..."
sudo systemctl stop backend || true

echo "Clearing old application code..."
sudo rm -rf /var/www/backend/*
