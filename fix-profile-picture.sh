#!/bin/bash

# Backup current HTML
cp index.html index.html.backup

# Replace profile picture section with a better solution
sed -i '/hero-profile-img/,/object-fit: cover;/c\
                <div class="profile-image-container">\
                    <img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=300&h=300&fit=crop&crop=face&fp-x=0.5&fp-y=0.5&fp-z=1&auto=format" \
                         alt="Samuel Wilberforce" \
                         class="hero-profile-img rounded-circle shadow-lg">\
                    <div class="profile-overlay">\
                        <i class="fas fa-cloud fa-2x"></i>\
                    </div>\
                </div>' index.html

echo "✅ Profile picture updated with professional placeholder"
