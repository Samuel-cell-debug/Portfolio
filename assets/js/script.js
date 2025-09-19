// Smooth scrolling for navigation links
$(document).ready(function() {
    $('a.nav-link').on('click', function(event) {
        if (this.hash !== "") {
            event.preventDefault();
            var hash = this.hash;
            $('html, body').animate({
                scrollTop: $(hash).offset().top - 70
            }, 800);
        }
    });

    // Animate progress bars when they come into view
    $(window).scroll(function() {
        $('.progress-bar').each(function() {
            var position = $(this).offset().top;
            var scroll = $(window).scrollTop() + $(window).height();
            if (position < scroll) {
                $(this).css('width', $(this).attr('aria-valuenow') + '%');
            }
        });
    });

    // Simple form validation
    $('form').on('submit', function(e) {
        e.preventDefault();
        var name = $('#name').val();
        var email = $('#email').val();
        var message = $('#message').val();
        
        if (name && email && message) {
            alert('Thank you for your message, ' + name + '! I will get back to you soon.');
            this.reset();
        } else {
            alert('Please fill in all fields before submitting.');
        }
    });
});