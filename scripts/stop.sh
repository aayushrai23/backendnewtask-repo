#!/bin/bash
set -e

echo "Stopping backend service..."
sudo systemctl stop backend || true
