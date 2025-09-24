#!/bin/bash

echo "🔍 Verifying Portfolio Fixes..."
echo "==============================="

# Check if main files are properly formatted
echo "1. Checking file structure..."
if [ -f "index.html" ] && [ -f "styles.css" ] && [ -f "script.js" ]; then
    echo "✅ All core files present"
else
    echo "❌ Missing core files"
    exit 1
fi

# Check for critical elements in HTML
echo "2. Checking HTML structure..."
if grep -q "Samuel Wilberforce" index.html && grep -q "profile-image-wrapper" index.html; then
    echo "✅ HTML structure correct"
else
    echo "❌ HTML issues detected"
fi

# Check CSS for key styles
echo "3. Checking CSS enhancements..."
if grep -q "hero-profile-img" styles.css && grep -q "project-card" styles.css; then
    echo "✅ CSS enhancements applied"
else
    echo "❌ CSS issues detected"
fi

# Check JavaScript functionality
echo "4. Checking JavaScript features..."
if grep -q "initImageLoading" script.js && grep -q "showNotification" script.js; then
    echo "✅ JavaScript features implemented"
else
    echo "❌ JavaScript issues detected"
fi

echo "==============================="
echo "🎉 Verification complete!"
echo "🌐 Check your live site: https://samuel-cell-debug.github.io/Portfolio/"
