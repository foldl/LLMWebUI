#!/bin/bash

# Development script for llama.cpp webui
#
# This script starts the webui development servers (Storybook and Vite).
# Note: You need to start llama-server separately.
#
# Usage:
#   bash scripts/dev.sh
#   npm run dev

# Cleanup function
cleanup() {
    echo "🧹 Cleaning up..."
    exit
}

# Set up signal handlers
trap cleanup SIGINT SIGTERM

echo "🚀 Starting development servers..."
echo "📝 Note: Make sure to start llama-server separately if needed"

# Use --insecure-http-parser to handle malformed HTTP responses from llama-server
# (some responses have both Content-Length and Transfer-Encoding headers)
storybook dev -p 6006 --ci & NODE_OPTIONS="--insecure-http-parser" vite dev --host 0.0.0.0 &

# Wait for all background processes
wait
