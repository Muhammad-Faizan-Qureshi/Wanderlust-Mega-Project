#!/bin/bash
set -e

file_to_find="../frontend/.env.docker"

if [ ! -f "$file_to_find" ]; then
    echo "ERROR: Frontend environment file not found."
    exit 1
fi

sed -i 's|^VITE_API_PATH=.*|VITE_API_PATH="http://localhost:31100"|' "$file_to_find"

echo "Frontend environment configured for local deployment."
