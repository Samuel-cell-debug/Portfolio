#!/bin/bash

echo "🎥 Testing Video Integration"
echo "============================"

# Check if HTML was updated
if grep -q "13fMTOYU9eH2AFtB1HNX2Y6xHznJImKo3" index.html; then
    echo "✅ Google Drive video URL found in HTML"
else
    echo "❌ Video URL not found in HTML"
fi

# Check if CSS styles are present
if grep -q "video-container" assets/css/style.css; then
    echo "✅ Video CSS styles found"
else
    echo "❌ Video CSS styles missing"
fi

# Check if fallback script exists
if [ -f "assets/js/video-fallback.js" ]; then
    echo "✅ Video fallback script found"
else
    echo "❌ Video fallback script missing"
fi

echo "============================"
echo "🌐 Your video will be available at:"
echo "https://samuel-cell-debug.github.io/Portfolio/#elevator-pitch"
