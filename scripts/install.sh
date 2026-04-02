#!/bin/bash
# 安装 wqf-card 依赖
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CARD_DIR="$(dirname "$SCRIPT_DIR")/skills/wqf-card"

if [ -f "$CARD_DIR/package.json" ]; then
    echo "Installing wqf-card dependencies..."
    cd "$CARD_DIR"
    npm install
    npx playwright install chromium
    echo "wqf-card dependencies installed successfully."
else
    echo "Error: package.json not found in $CARD_DIR"
    exit 1
fi
