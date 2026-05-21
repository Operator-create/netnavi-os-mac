#!/bin/bash
cd "$(dirname "$0")"

echo ""
echo "================================================="
echo "  NetNavi OS — API Key Configuration"
echo "================================================="
echo ""
echo " You will need a FREE Pinecone account to give"
echo " your Navi long-term memory across sessions."
echo ""
echo " Get your key at: https://pinecone.io"
echo "  1. Create a free account"
echo "  2. Create an index"
echo "  3. Copy your API key and paste it below"
echo ""
echo " (Press ENTER to skip for now)"
echo ""

read -p " Pinecone API Key: " PINECONE_KEY

if [ -n "$PINECONE_KEY" ]; then
    mkdir -p usr_config
    echo "PINECONE_API_KEY=$PINECONE_KEY" > usr_config/pinecone_credentials.env
    echo ""
    echo " ✅ Pinecone key saved to usr_config/pinecone_credentials.env"
else
    echo ""
    echo " Skipped. You can run this again later to add your key."
fi

echo ""
echo "================================================="
echo "  Done! Your Navi's memory is configured."
echo "================================================="
echo ""
read -p " Press ENTER to close..."
