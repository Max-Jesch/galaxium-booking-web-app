#!/bin/bash
# Script to copy images from the main infrastructure repository
# Run this from the galaxium-booking-web-app directory

set -e

echo "Copying images from main infrastructure repository..."

# Check if images directory exists in parent
if [ -d "../galaxium-travels-infrastructure/images" ]; then
    mkdir -p images
    cp ../galaxium-travels-infrastructure/images/run-containers-02.gif images/
    cp ../galaxium-travels-infrastructure/images/run-containers-on-code-engine-01.png images/
    echo "✅ Images copied successfully!"
    echo "Images copied:"
    ls -lh images/
else
    echo "❌ Error: Could not find ../galaxium-travels-infrastructure/images directory"
    echo "Please ensure the main infrastructure repository is cloned in the parent directory"
    exit 1
fi

echo ""
echo "Next steps:"
echo "1. git add images/"
echo "2. git commit -m 'Add documentation images'"
echo "3. git push origin main"