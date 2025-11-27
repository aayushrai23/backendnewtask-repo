#!/bin/bash
set -e

echo "Validating service health..."
sleep 5
curl -f http://localhost:3000/health || exit 1
echo "Backend is healthy!"
