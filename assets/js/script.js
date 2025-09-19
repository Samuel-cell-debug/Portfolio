console.log('✅ Custom JavaScript is loading!');
console.log('✅ jQuery available:', typeof jQuery !== 'undefined');
console.log('✅ Number of nav links:', document.querySelectorAll('a.nav-link').length);// Vanilla JavaScript smooth scrolling (works without jQuery)
document.addEventListener('DOMContentLoaded', function() {
    // Add smooth scrolling to all navigation links
    document.querySelectorAll('a.nav-link').forEach(anchor => {
        anchor.addEventListener('click', function(e) {
            e.preventDefault();
            
            const targetId = this.getAttribute('href');
            if (targetId.startsWith('#')) {
                const targetElement = document.querySelector(targetId);
                if (targetElement) {
                    window.scrollTo({
                        top: targetElement.offsetTop - 70,
                        behavior: 'smooth'
                    });
                }
            }
        });
    });

    // Progress bar animation
    function animateProgressBars() {
        document.querySelectorAll('.progress-bar').forEach(bar => {
            const position = bar.getBoundingClientRect().top;
            const screenPosition = window.innerHeight / 1.3;
            
            if (position < screenPosition) {
                const width = bar.getAttribute('aria-valuenow') + '%';
                bar.style.width = width;
            }
        });
    }

    // Animate on scroll and load
    window.addEventListener('scroll', animateProgressBars);
    animateProgressBars();

    // Form validation
    const form = document.querySelector('form');
    if (form) {
        form.addEventListener('submit', function(e) {
            e.preventDefault();
            
            const name = document.getElementById('name').value;
            const email = document.getElementById('email').value;
            const message = document.getElementById('message').value;
            
            if (name && email && message) {
                alert('Thank you for your message, ' + name + '! I will get back to you soon.');
                form.reset();
            } else {
                alert('Please fill in all fields before submitting.');
            }
        });
    }
});