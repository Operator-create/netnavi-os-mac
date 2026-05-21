#!/bin/bash
# Double-click this file in Finder to run the installer.

# Move to the script's own directory regardless of where it's launched from
cd "$(dirname "$0")"

echo ""
echo "================================================="
echo "  Welcome to NetNavi OS for macOS"
echo "  Your personal AI companion is about to boot."
echo "================================================="
echo ""
echo " This installer will set up everything you need:"
echo "  - Homebrew (the Mac package manager)"
echo "  - Python   (the Navi's brain runtime)"
echo "  - Node.js  (the action layer)"
echo "  - Obsidian (your vault interface)"
echo "  - Gemini CLI (the AI action bridge)"
echo ""
echo " Please do NOT close this window."
echo ""
read -p " Press ENTER to begin..."

# Make install.sh executable and run it
chmod +x ./install.sh
bash ./install.sh

echo ""
echo "================================================="
echo "  Installation complete!"
echo "  Now open START_HERE.md for your next steps."
echo "================================================="
echo ""
read -p " Press ENTER to close..."
