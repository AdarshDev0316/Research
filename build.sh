#!/usr/bin/env bash
# Render.com build script — installs system dependencies
set -e

echo ">>> Installing system packages (Tesseract + Poppler)..."
apt-get update -qq
apt-get install -y -qq tesseract-ocr poppler-utils

echo ">>> Installing Python dependencies..."
pip install --upgrade pip
pip install -r requirements.txt

echo ">>> Build complete!"
