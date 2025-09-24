#!/bin/bash

echo "🔄 Attempting to recover original images..."

# Check if we have the original images somewhere
if [ -f "assets/img/profile.jpg" ]; then
    echo "✅ profile.jpg exists"
else
    echo "❌ profile.jpg missing - let's download a placeholder"
    # Download a professional placeholder
    curl -o assets/img/profile.jpg "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=300&h=300&fit=crop&crop=face"
fi

if [ -f "assets/img/iot-solutions.jpg" ]; then
    echo "✅ iot-solutions.jpg exists"
else
    echo "❌ iot-solutions.jpg missing - downloading IoT image"
    curl -o assets/img/iot-solutions.jpg "https://images.unsplash.com/photo-1558002038-1055900df638?w=400&h=250&fit=crop"
fi

if [ -f "assets/img/cloud-architecture.jpg" ]; then
    echo "✅ cloud-architecture.jpg exists"
else
    echo "❌ cloud-architecture.jpg missing - downloading cloud image"
    curl -o assets/img/cloud-architecture.jpg "https://images.unsplash.com/photo-1627398242454-45a1465c2479?w=400&h=250&fit=crop"
fi

echo "✅ Image recovery completed"
