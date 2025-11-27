#!/bin/bash

echo "Validating service health..."

# Wait for service to fully boot
sleep 5

# Replace 3000 with your backend port if different
curl -f http://localhost:3000 || exit 1

echo "Service is healthy!"

