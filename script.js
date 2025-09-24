// Portfolio JavaScript - Enhanced with better functionality
document.addEventListener('DOMContentLoaded', function() {
    console.log('🚀 Portfolio initialized successfully');
    
    // Initialize all functionality
    initLoader();
    initSmoothScrolling();
    initNavbarEffects();
    initAnimations();
    initContactForm();
    initSkillAnimations();
    initImageLoading();
});

// Page loader functionality
function initLoader() {
    const loader = document.getElementById('pageLoader');
    
    // Hide loader when page is fully loaded
    window.addEventListener('load', function() {
        setTimeout(() => {
            loader.classList.add('loaded');
            setTimeout(() => {
                loader.style.display = 'none';
            }, 500);
        }, 1000);
    });
}

// Smooth scrolling for navigation
function initSmoothScrolling() {
    const navLinks = document.querySelectorAll('a[href^="#"]');
    
    navLinks.forEach(link => {
        link.addEventListener('click', function(e) {
            e.preventDefault();
            
            const targetId = this.getAttribute('href');
            const targetElement = document.querySelector(targetId);
            
            if (targetElement) {
                const offsetTop = targetElement.offsetTop - 80;
                
                window.scrollTo({
                    top: offsetTop,
                    behavior: 'smooth'
                });
                
                // Update active navigation link
                updateActiveNavLink(targetId);
                
                // Close mobile menu if open
                const navbarToggler = document.querySelector('.navbar-toggler');
                const navbarCollapse = document.querySelector('.navbar-collapse');
                
                if (navbarCollapse.classList.contains('show')) {
                    navbarToggler.click();
                }
            }
        });
    });
}

// Navbar background effect and active link highlighting
function initNavbarEffects() {
    const navbar = document.querySelector('.navbar');
    
    window.addEventListener('scroll', function() {
        // Add/remove background based on scroll position
        if (window.scrollY > 100) {
            navbar.style.background = 'rgba(15, 23, 42, 0.98)';
        } else {
            navbar.style.background = 'rgba(15, 23, 42, 0.95)';
        }
        
        // Update active navigation link
        updateActiveNavLink();
    });
}

// Update active navigation link based on scroll position
function updateActiveNavLink(targetId = null) {
    const sections = document.querySelectorAll('section[id]');
    const navLinks = document.querySelectorAll('.nav-link');
    
    let currentSection = '';
    
    if (targetId) {
        currentSection = targetId;
    } else {
        // Find which section is currently in view
        sections.forEach(section => {
            const sectionTop = section.offsetTop - 100;
            const sectionHeight = section.offsetHeight;
            
            if (window.scrollY >= sectionTop && window.scrollY < sectionTop + sectionHeight) {
                currentSection = '#' + section.getAttribute('id');
            }
        });
    }
    
    // Update active class on navigation links
    navLinks.forEach(link => {
        link.classList.remove('active');
        if (link.getAttribute('href') === currentSection) {
            link.classList.add('active');
        }
    });
}

// Initialize animations for elements
function initAnimations() {
    const animateOnScroll = function() {
        const elements = document.querySelectorAll('.project-card, .skill-category, .highlight-item');
        
        elements.forEach(element => {
            const elementTop = element.getBoundingClientRect().top;
            const elementVisible = 150;
            
            if (elementTop < window.innerHeight - elementVisible) {
                element.style.opacity = '1';
                element.style.transform = 'translateY(0)';
            }
        });
    };
    
    // Set initial state for animated elements
    const animatedElements = document.querySelectorAll('.project-card, .skill-category, .highlight-item');
    animatedElements.forEach(element => {
        element.style.opacity = '0';
        element.style.transform = 'translateY(30px)';
        element.style.transition = 'opacity 0.6s ease, transform 0.6s ease';
    });
    
    // Initial check
    animateOnScroll();
    
    // Check on scroll
    window.addEventListener('scroll', animateOnScroll);
}

// Contact form handling
function initContactForm() {
    const contactForm = document.getElementById('contactForm');
    
    if (contactForm) {
        contactForm.addEventListener('submit', function(e) {
            e.preventDefault();
            
            // Get form data
            const formData = new FormData(this);
            const name = this.querySelector('#name').value;
            const email = this.querySelector('#email').value;
            const message = this.querySelector('#message').value;
            
            // Simple validation
            let isValid = true;
            const inputs = this.querySelectorAll('input, textarea');
            
            inputs.forEach(input => {
                if (input.hasAttribute('required') && !input.value.trim()) {
                    isValid = false;
                    input.classList.add('error');
                } else {
                    input.classList.remove('error');
                }
            });
            
            if (isValid) {
                // Show success message
                showNotification('Thank you for your message! I will get back to you soon.', 'success');
                
                // Reset form
                this.reset();
                
                // Here you would typically send the data to a server
                console.log('Form submitted:', { name, email, message });
            } else {
                showNotification('Please fill in all required fields.', 'error');
            }
        });
        
        // Add input event listeners to remove error class when user starts typing
        const inputs = contactForm.querySelectorAll('input, textarea');
        inputs.forEach(input => {
            input.addEventListener('input', function() {
                this.classList.remove('error');
            });
        });
    }
}

// Skill progress bar animations
function initSkillAnimations() {
    const animateSkillBars = function() {
        const skillBars = document.querySelectorAll('.skill-progress');
        
        skillBars.forEach(bar => {
            const rect = bar.getBoundingClientRect();
            const isVisible = (rect.top <= window.innerHeight && rect.bottom >= 0);
            
            if (isVisible && !bar.hasAttribute('data-animated')) {
                const width = bar.getAttribute('data-width') + '%';
                bar.style.width = width;
                bar.setAttribute('data-animated', 'true');
            }
        });
    };
    
    // Set initial width to 0 for animation
    const skillBars = document.querySelectorAll('.skill-progress');
    skillBars.forEach(bar => {
        const width = bar.getAttribute('data-width');
        bar.setAttribute('data-width', width);
        bar.style.width = '0';
    });
    
    // Initial animation
    setTimeout(animateSkillBars, 500);
    
    // Animate on scroll
    window.addEventListener('scroll', animateSkillBars);
}

// Image loading and error handling
function initImageLoading() {
    const images = document.querySelectorAll('img');
    
    images.forEach(img => {
        // Add loading attribute for better performance
        img.setAttribute('loading', 'lazy');
        
        // Check if image is already loaded
        if (img.complete) {
            handleImageLoad(img);
        } else {
            img.addEventListener('load', function() {
                handleImageLoad(this);
            });
            
            img.addEventListener('error', function() {
                handleImageError(this);
            });
        }
    });
}

function handleImageLoad(img) {
    img.style.opacity = '1';
    img.parentElement.classList.add('loaded');
}

function handleImageError(img) {
    console.warn('Image failed to load:', img.src);
    
    // Set a fallback image based on the context
    if (img.classList.contains('hero-profile-img')) {
        img.src = 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=300&h=300&fit=crop&crop=face';
    }
    
    img.style.opacity = '1';
}

// Notification system
function showNotification(message, type = 'info') {
    // Create notification element
    const notification = document.createElement('div');
    notification.className = `notification notification-${type}`;
    notification.innerHTML = `
        <div class="notification-content">
            <i class="fas fa-${getNotificationIcon(type)}"></i>
            <span>${message}</span>
        </div>
    `;
    
    // Add styles
    notification.style.cssText = `
        position: fixed;
        top: 20px;
        right: 20px;
        z-index: 10000;
        background: ${getNotificationColor(type)};
        color: white;
        padding: 1rem 1.5rem;
        border-radius: 10px;
        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
        animation: slideInRight 0.3s ease;
        max-width: 400px;
    `;
    
    // Add CSS for animation
    if (!document.querySelector('#notification-styles')) {
        const style = document.createElement('style');
        style.id = 'notification-styles';
        style.textContent = `
            @keyframes slideInRight {
                from { transform: translateX(100%); opacity: 0; }
                to { transform: translateX(0); opacity: 1; }
            }
            @keyframes slideOutRight {
                from { transform: translateX(0); opacity: 1; }
                to { transform: translateX(100%); opacity: 0; }
            }
            .notification-success { background: #10b981; }
            .notification-error { background: #ef4444; }
            .notification-info { background: #3b82f6; }
        `;
        document.head.appendChild(style);
    }
    
    document.body.appendChild(notification);
    
    // Remove after 5 seconds
    setTimeout(() => {
        notification.style.animation = 'slideOutRight 0.3s ease';
        setTimeout(() => {
            if (notification.parentElement) {
                document.body.removeChild(notification);
            }
        }, 300);
    }, 5000);
}

function getNotificationIcon(type) {
    const icons = {
        success: 'check-circle',
        error: 'exclamation-circle',
        info: 'info-circle'
    };
    return icons[type] || 'info-circle';
}

function getNotificationColor(type) {
    const colors = {
        success: '#10b981',
        error: '#ef4444',
        info: '#3b82f6'
    };
    return colors[type] || '#3b82f6';
}

// Add error class styles
const errorStyles = document.createElement('style');
errorStyles.textContent = `
    .error {
        border-color: #ef4444 !important;
        box-shadow: 0 0 0 3px rgba(239, 68, 68, 0.1) !important;
    }
    
    .notification-content {
        display: flex;
        align-items: center;
        gap: 0.75rem;
    }
    
    .notification-content i {
        font-size: 1.2rem;
    }
`;
document.head.appendChild(errorStyles);

// Initialize when DOM is fully loaded
if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', init);
} else {
    init();
}
