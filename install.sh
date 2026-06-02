#!/bin/bash
# NetNavi OS macOS Deployment Bootstrapper

echo "================================================="
echo " 🌐 Initializing NetNavi OS Deployment Sequence 🌐"
echo "================================================="

# Check for Homebrew
if ! command -v brew &> /dev/null
then
    echo "Homebrew not found. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo -e "\n[1/4] Installing Core Dependencies via Homebrew..."
brew install python node
brew install --cask obsidian
brew install --cask gephi 2>/dev/null || echo "Note: Gephi installation skipped or requires manual install."

echo -e "\n[2/4] Refreshing Environment Variables..."
export PATH="/opt/homebrew/bin:/usr/local/bin:$PATH"

echo -e "\n[3/4] Installing Gemini CLI & Action Layer Dependencies..."
npm install -g @google/gemini-cli

echo -e "\n[4/5] Opening Antigravity IDE plugin page in your browser..."
open "https://antigravity.google/"

echo -e "\n[4.5/5] Installing Python Package Dependencies..."
pip3 install websockets cryptography

echo -e "\n[5/5] Installation Complete!"
echo "================================================="

echo -e "\nExecuting The Awakening Sequence..."
sleep 2

if command -v python3 &> /dev/null
then
    python3 ./Awakening.py
else
    echo "Python3 path not found. Please run 'python3 Awakening.py' manually."
fi
