#!/bin/bash
set -e

echo "Validating service health..."

# Allow PM2 app time to boot
sleep 5

# Check backend running on port 5000
curl -f http://localhost:5000 || exit 1

echo "Service is healthy!"
