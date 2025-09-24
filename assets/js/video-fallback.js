// Video fallback functionality
document.addEventListener('DOMContentLoaded', function() {
    const videoIframe = document.querySelector('#elevator-pitch iframe');
    
    if (videoIframe) {
        // Check if video loads properly
        videoIframe.addEventListener('load', function() {
            console.log('✅ Elevator pitch video loaded successfully');
        });
        
        videoIframe.addEventListener('error', function() {
            console.log('❌ Video failed to load, showing fallback message');
            showVideoFallback();
        });
        
        // Fallback after 5 seconds if still loading
        setTimeout(function() {
            if (videoIframe.offsetParent === null) {
                showVideoFallback();
            }
        }, 5000);
    }
});

function showVideoFallback() {
    const videoContainer = document.querySelector('.video-container');
    if (videoContainer) {
        videoContainer.innerHTML = `
            <div class="alert alert-info text-center p-5">
                <i class="fas fa-video fa-3x mb-3"></i>
                <h4>Video Loading</h4>
                <p>If the video doesn't load, you can:</p>
                <div class="mt-3">
                    <a href="https://drive.google.com/file/d/13fMTOYU9eH2AFtB1HNX2Y6xHznJImKo3/view?usp=sharing" 
                       target="_blank" 
                       class="btn btn-primary me-2">
                       Open Video Directly
                    </a>
                    <a href="#contact" class="btn btn-outline-primary">
                        Contact Me
                    </a>
                </div>
            </div>
        `;
    }
}
