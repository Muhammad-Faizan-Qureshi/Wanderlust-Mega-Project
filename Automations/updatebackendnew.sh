#!/bin/bash
set -e

file_to_find="../backend/.env.docker"

if [ ! -f "$file_to_find" ]; then
    echo "ERROR: Backend environment file not found."
    exit 1
fi

sed -i 's|^FRONTEND_URL=.*|FRONTEND_URL="http://localhost:31000"|' "$file_to_find"

echo "Backend environment configured for Kubernetes."
