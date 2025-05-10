#!/bin/sh

# Get the PORT from environment variable
export N8N_PORT=${PORT:-8080}

# Start n8n
exec n8n start
