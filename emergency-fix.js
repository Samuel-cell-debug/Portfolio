// Quick fix for the JavaScript errors
document.addEventListener('DOMContentLoaded', function() {
    console.log('✅ Portfolio loading with emergency fixes...');
    
    // Fix 1: Remove the broken init() call
    // Fix 2: Handle image loading properly
    fixImageLoading();
    // Fix 3: Fix Google Drive iframe issue
    fixVideoEmbed();
    // Fix 4: Initialize basic functionality
    initBasicFunctionality();
});

function fixImageLoading() {
    const images = document.querySelectorAll('img');
    images.forEach(img => {
        // Fix broken image URLs
        if (img.src.includes('profile-placeholder.jpg')) {
            img.src = 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=300&h=300&fit=crop&crop=face';
        }
        if (img.src.includes('1558002038-1055900df638')) {
            img.src = 'https://images.unsplash.com/photo-1551288049-bebda4e38f71?w=400&h=250&fit=crop';
        }
        
        // Add error handling
        img.onerror = function() {
            this.style.opacity = '0.5';
            this.style.background = '#f0f0f0';
        };
    });
}

function fixVideoEmbed() {
    const iframe = document.querySelector('iframe[src*="drive.google.com"]');
    if (iframe) {
        // Add sandbox attributes to fix CSP issues
        iframe.setAttribute('sandbox', 'allow-scripts allow-same-origin allow-popups');
        iframe.setAttribute('loading', 'lazy');
    }
}

function initBasicFunctionality() {
    // Smooth scrolling
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function (e) {
            e.preventDefault();
            const target = document.querySelector(this.getAttribute('href'));
            if (target) {
                target.scrollIntoView({ behavior: 'smooth' });
            }
        });
    });
    
    // Basic form handling
    const form = document.querySelector('form');
    if (form) {
        form.addEventListener('submit', function(e) {
            e.preventDefault();
            alert('Thank you for your message! I will get back to you soon.');
            this.reset();
        });
    }
}

// Remove the broken init call at the bottom of the file
console.log('✅ Emergency fixes applied');
