// Smooth scrolling for navigation links
document.querySelectorAll('a.nav-link, a.btn').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
        const href = this.getAttribute('href');
        
        // Only handle internal links
        if (href && href.startsWith('#')) {
            e.preventDefault();
            const targetId = href;
            const targetElement = document.querySelector(targetId);
            
            if (targetElement) {
                window.scrollTo({
                    top: targetElement.offsetTop - 75,
                    behavior: 'smooth'
                });
                
                // Update active nav link
                document.querySelectorAll('.nav-link').forEach(link => {
                    link.classList.remove('active');
                });
                this.classList.add('active');
            }
        }
    });
});

// Form submission handling
document.getElementById('contactForm')?.addEventListener('submit', function(e) {
    e.preventDefault();
    
    // Simple validation
    const inputs = this.querySelectorAll('input, textarea');
    let isValid = true;
    
    inputs.forEach(input => {
        if (input.hasAttribute('required') && !input.value.trim()) {
            isValid = false;
            input.classList.add('is-invalid');
        } else {
            input.classList.remove('is-invalid');
        }
    });
    
    if (isValid) {
        alert('Thank you for your message! I will get back to you soon.');
        this.reset();
    }
});

// Animate progress bars when they come into view
function animateProgressBars() {
    const progressBars = document.querySelectorAll('.progress-bar');
    
    progressBars.forEach(bar => {
        const rect = bar.getBoundingClientRect();
        const isVisible = (rect.top <= window.innerHeight && rect.bottom >= 0);
        
        if (isVisible && !bar.classList.contains('animated')) {
            const width = bar.style.width;
            bar.style.width = '0';
            bar.classList.add('animated');
            
            setTimeout(() => {
                bar.style.width = width;
            }, 100);
        }
    });
}

// Navbar background on scroll
function updateNavbar() {
    const navbar = document.querySelector('.navbar');
    if (window.scrollY > 100) {
        navbar.style.background = 'rgba(37, 99, 235, 0.95)';
        navbar.style.backdropFilter = 'blur(10px)';
    } else {
        navbar.style.background = '';
        navbar.style.backdropFilter = '';
    }
}

// Initialize everything when DOM is loaded
document.addEventListener('DOMContentLoaded', function() {
    // Animate progress bars on load
    setTimeout(animateProgressBars, 500);
    
    // Set up scroll events
    window.addEventListener('scroll', function() {
        animateProgressBars();
        updateNavbar();
    });
    
    // Update navbar initially
    updateNavbar();
    
    console.log('✅ Portfolio JavaScript loaded successfully');
});

// Add loading animation for images
document.addEventListener('DOMContentLoaded', function() {
    const images = document.querySelectorAll('img');
    
    images.forEach(img => {
        img.addEventListener('load', function() {
            this.style.opacity = '1';
        });
        
        img.style.transition = 'opacity 0.3s ease';
        img.style.opacity = '0';
    });
});
