#!/bin/bash
cd "$(dirname "$0")"

echo "================================================="
echo " 🌐 NetNavi OS - Graphify Watch Daemon 🌐"
echo "================================================="
echo ""

echo "Installing Watchdog dependency..."
# Attempt standard install, fallback to break-system-packages if managed environment (like Homebrew)
python3 -m pip install watchdog --quiet || pip3 install watchdog --quiet --break-system-packages

echo ""
echo "Starting Graphify Background Daemon..."
echo "It will watch your Vault for changes and update the semantic graph automatically."

nohup graphify watch . > graphify-watch.log 2>&1 &

echo ""
echo "✅ Daemon is running in the background. You can safely close this terminal window."
sleep 3
