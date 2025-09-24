// Fixed script.js - No errors
document.addEventListener('DOMContentLoaded', function() {
    console.log('✅ Portfolio loaded successfully');
    
    // Simple smooth scrolling
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function (e) {
            e.preventDefault();
            const target = document.querySelector(this.getAttribute('href'));
            if (target) {
                target.scrollIntoView({ behavior: 'smooth', block: 'start' });
            }
        });
    });
    
    // Fix images
    document.querySelectorAll('img').forEach(img => {
        img.onerror = function() {
            if (this.src.includes('profile-placeholder')) {
                this.src = 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=300&h=300&fit=crop&crop=face';
            }
            if (this.src.includes('1558002038')) {
                this.src = 'https://images.unsplash.com/photo-1551288049-bebda4e38f71?w=400&h=250&fit=crop';
            }
        };
    });
    
    // Simple form handling
    const form = document.querySelector('form');
    if (form) {
        form.addEventListener('submit', function(e) {
            e.preventDefault();
            alert('Thank you for your message! I will get back to you soon.');
            this.reset();
        });
    }
});

// No init() call at the bottom - this was causing the error