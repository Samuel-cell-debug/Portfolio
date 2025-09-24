#!/bin/bash

echo "🎯 Applying targeted fixes..."

# Backup current files
cp index.html index.html.backup2
cp styles.css styles.css.backup2

# 1. Fix Profile Picture - Remove cloud icon and use GitHub assets
sed -i '/profile-image-wrapper/,/profile-badge/d' index.html
sed -i '/hero-profile-img/ {N; s/hero-profile-img[^>]*>/hero-profile-img" alt="Samuel Wilberforce"/;}' index.html

# 2. Update Profile Picture to use GitHub assets path
sed -i 's|https://i.ibb.co/7n8qZ1Z/profile-placeholder.jpg|assets/img/profile.jpg|g' index.html

# 3. Fix IoT Project Thumbnail - Use GitHub assets
sed -i 's|https://images.unsplash.com/photo-1558002038-1055900df638?w=400&h=250&fit=crop&auto=format|assets/img/iot-solutions.jpg|g' index.html

# 4. Remove the group discussion image from About section
sed -i 's|https://images.unsplash.com/photo-1542744173-8e7e53415bb0?w=500&h=400&fit=crop&auto=format|assets/img/cloud-architecture.jpg|g' index.html

# 5. Bring back original project content and structure
# Update project titles and descriptions to match original
sed -i 's|Urban Growth Analysis|Urban Growth Analysis with AWS QuickSight|g' index.html
sed -i 's|Data-driven analysis of Accra.*|A conceptual data analysis project using AWS QuickSight to visualize and model urban growth patterns in Accra, Ghana.|g' index.html

sed -i 's|Cloud Infrastructure Design|Cloud Infrastructure Design|g' index.html
sed -i 's|Scalable AWS infrastructure architecture.*|Designing scalable and secure cloud infrastructure solutions using AWS services including EC2, S3, RDS, and Lambda functions.|g' index.html

sed -i 's|Smart City IoT Platform|Smart City IoT Solutions|g' index.html
sed -i 's|IoT solutions using AWS IoT Core.*|Developing IoT-based solutions for smart city applications, including sensor networks for environmental monitoring and infrastructure management.|g' index.html

# 6. Update CSS to remove cloud icon styles and fix image handling
cat > styles.css << 'CSS'
/* Custom Styles - Cleaned Version */
:root {
    --primary-blue: #2563eb;
    --primary-dark: #1e40af;
    --terracotta: #ea580c;
    --accent-green: #16a34a;
    --dark-bg: #0f172a;
    --light-bg: #f8fafc;
}

body {
    font-family: 'Inter', sans-serif;
    line-height: 1.6;
    color: #334155;
}

/* Navigation */
.navbar {
    background: rgba(15, 23, 42, 0.95) !important;
    backdrop-filter: blur(10px);
    padding: 1rem 0;
}

.navbar-brand {
    font-size: 1.4rem;
    font-weight: 700;
}

/* Hero Section */
.hero-section {
    background: linear-gradient(135deg, var(--dark-bg) 0%, #1e293b 100%);
    min-height: 100vh;
    display: flex;
    align-items: center;
    color: white;
}

.hero-profile-img {
    width: 200px;
    height: 200px;
    border-radius: 50%;
    object-fit: cover;
    border: 4px solid rgba(255, 255, 255, 0.2);
    margin-bottom: 2rem;
}

.hero-title {
    font-size: 3rem;
    font-weight: 700;
    margin-bottom: 1rem;
}

.hero-subtitle {
    font-size: 1.3rem;
    opacity: 0.9;
    margin-bottom: 2rem;
}

/* Sections */
section {
    padding: 5rem 0;
}

.section-title {
    font-size: 2.5rem;
    font-weight: 700;
    margin-bottom: 1rem;
    color: #1e293b;
}

/* Project Cards */
.project-card {
    background: white;
    border-radius: 15px;
    overflow: hidden;
    box-shadow: 0 10px 30px rgba(0,0,0,0.1);
    transition: transform 0.3s ease;
    height: 100%;
}

.project-card:hover {
    transform: translateY(-5px);
}

.project-image {
    height: 200px;
    overflow: hidden;
}

.project-image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
}

.project-content {
    padding: 1.5rem;
}

/* Skills */
.skill-bar {
    height: 8px;
    background: #e2e8f0;
    border-radius: 4px;
    margin: 0.5rem 0;
    overflow: hidden;
}

.skill-progress {
    height: 100%;
    background: linear-gradient(90deg, var(--primary-blue), var(--terracotta));
    border-radius: 4px;
}

/* Video Section */
.video-wrapper {
    border-radius: 15px;
    overflow: hidden;
    box-shadow: 0 20px 40px rgba(0,0,0,0.2);
}

/* Responsive */
@media (max-width: 768px) {
    .hero-title {
        font-size: 2.2rem;
    }
    
    .hero-profile-img {
        width: 150px;
        height: 150px;
    }
}

/* Ensure images from assets folder load properly */
img[src*="assets/img/"] {
    background: #f8fafc;
}

/* Fallback for missing images */
img:not([src]) {
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    display: flex;
    align-items: center;
    justify-content: center;
    color: white;
    font-weight: bold;
}

img:not([src])::after {
    content: "Image Loading...";
}
CSS

# 7. Create asset directory structure if it doesn't exist
mkdir -p assets/img

# 8. Create a simple image fallback system
cat > assets/js/image-fallback.js << 'JS'
// Image fallback system
document.addEventListener('DOMContentLoaded', function() {
    const images = document.querySelectorAll('img');
    
    images.forEach(img => {
        img.addEventListener('error', function() {
            console.log('Image failed to load:', this.src);
            
            // Set appropriate fallback based on image type
            if (this.src.includes('profile.jpg')) {
                this.src = 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=300&h=300&fit=crop&crop=face';
                this.alt = 'Samuel Wilberforce - Professional Portrait';
            } else if (this.src.includes('iot-solutions.jpg')) {
                this.src = 'https://images.unsplash.com/photo-1558002038-1055900df638?w=400&h=250&fit=crop';
                this.alt = 'IoT Solutions Project';
            } else if (this.src.includes('cloud-architecture.jpg')) {
                this.src = 'https://images.unsplash.com/photo-1627398242454-45a1465c2479?w=400&h=250&fit=crop';
                this.alt = 'Cloud Architecture';
            }
        });
        
        // Add loading state
        if (!img.complete) {
            img.style.opacity = '0';
            img.addEventListener('load', function() {
                this.style.opacity = '1';
                this.style.transition = 'opacity 0.3s ease';
            });
        }
    });
});
JS

# 9. Update HTML to include the image fallback script
sed -i '/<!-- Custom JS -->/a\\    <script src="assets/js/image-fallback.js"></script>' index.html

# 10. Create a simple script to check if assets exist
cat > check-assets.js << 'JS'
// Check if assets exist
const assetsToCheck = [
    'assets/img/profile.jpg',
    'assets/img/iot-solutions.jpg', 
    'assets/img/cloud-architecture.jpg'
];

assetsToCheck.forEach(asset => {
    fetch(asset)
        .then(response => {
            if (response.ok) {
                console.log('✅', asset, 'exists');
            } else {
                console.log('❌', asset, 'missing - will use fallback');
            }
        })
        .catch(error => {
            console.log('❌', asset, 'error - will use fallback');
        });
});
JS

echo "✅ Targeted fixes applied!"
echo ""
echo "📋 Changes made:"
echo "✅ Removed cloud icon from profile picture"
echo "✅ Updated image paths to use GitHub assets folder"
echo "✅ Fixed IoT project thumbnail path"
echo "✅ Removed group discussion image"
echo "✅ Restored original project content"
echo "✅ Added image fallback system"
echo ""
echo "🚀 Next steps:"
echo "1. Make sure your image files are in assets/img/ folder:"
echo "   - profile.jpg"
echo "   - iot-solutions.jpg" 
echo "   - cloud-architecture.jpg"
echo ""
echo "2. Push the changes:"
echo "   git add ."
echo "   git commit -m 'FIX: Profile picture, IoT thumbnail, and content restoration'"
echo "   git push origin main"
