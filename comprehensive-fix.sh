#!/bin/bash

echo "🎨 Starting comprehensive portfolio fix..."

# Backup current files
cp index.html index.html.backup
cp styles.css styles.css.backup
cp script.js script.js.backup

# Create the fixed index.html
cat > index.html << 'HTML'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Samuel Wilberforce - AWS Cloud Solutions Architect</title>
    <meta name="description" content="AWS Cloud Specialist transforming urban housing in Ghana through technology and innovation">
    <meta name="keywords" content="AWS, Cloud Computing, Ghana, Urban Development, Housing Solutions">
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <!-- Loading Screen -->
    <div class="page-loader" id="pageLoader">
        <div class="loader-content">
            <div class="loader-spinner"></div>
            <h4>Samuel Wilberforce</h4>
            <p>Cloud Solutions Architect</p>
        </div>
    </div>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
        <div class="container">
            <a class="navbar-brand fw-bold" href="#home">
                <i class="fas fa-cloud me-2"></i>Samuel Wilberforce
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="#home">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="#about">About</a></li>
                    <li class="nav-item"><a class="nav-link" href="#portfolio">Projects</a></li>
                    <li class="nav-item"><a class="nav-link" href="#skills">Skills</a></li>
                    <li class="nav-item"><a class="nav-link" href="#elevator-pitch">Video Pitch</a></li>
                    <li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <section id="home" class="hero-section">
        <div class="hero-background"></div>
        <div class="container text-center text-white">
            <div class="hero-content">
                <!-- Profile Picture with Fallback -->
                <div class="profile-image-wrapper">
                    <img src="https://i.ibb.co/7n8qZ1Z/profile-placeholder.jpg" 
                         alt="Samuel Wilberforce - AWS Cloud Architect"
                         class="hero-profile-img"
                         onerror="this.src='https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=300&h=300&fit=crop&crop=face'">
                    <div class="profile-badge">
                        <i class="fas fa-cloud"></i>
                    </div>
                </div>
                
                <h1 class="hero-title">Samuel Wilberforce</h1>
                <p class="hero-subtitle">AWS Cloud Solutions Architect | Transforming Urban Ghana Through Technology</p>
                
                <div class="hero-features">
                    <span class="feature-badge">AWS Certified</span>
                    <span class="feature-badge">Urban Development</span>
                    <span class="feature-badge">Cloud Architecture</span>
                </div>
                
                <div class="hero-actions">
                    <a href="#portfolio" class="btn btn-primary btn-lg">
                        <i class="fas fa-rocket me-2"></i>View My Work
                    </a>
                    <a href="#contact" class="btn btn-outline-light btn-lg">
                        <i class="fas fa-paper-plane me-2"></i>Get In Touch
                    </a>
                </div>
            </div>
        </div>
        <div class="scroll-indicator">
            <a href="#about" class="scroll-link">
                <i class="fas fa-chevron-down"></i>
            </a>
        </div>
    </section>

    <!-- About Section -->
    <section id="about" class="section-about">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <div class="about-content">
                        <span class="section-label">About Me</span>
                        <h2 class="section-title">Bridging Technology & Urban Development in Ghana</h2>
                        <p class="lead">I specialize in AWS cloud solutions that address urban housing challenges through scalable, sustainable technology.</p>
                        
                        <div class="about-highlights">
                            <div class="highlight-item">
                                <i class="fas fa-cloud-upload-alt"></i>
                                <div>
                                    <h5>AWS Cloud Architecture</h5>
                                    <p>Designing scalable infrastructure for urban development projects</p>
                                </div>
                            </div>
                            <div class="highlight-item">
                                <i class="fas fa-city"></i>
                                <div>
                                    <h5>Ghana Urban Focus</h5>
                                    <p>Creating solutions tailored to Ghana's unique urban challenges</p>
                                </div>
                            </div>
                            <div class="highlight-item">
                                <i class="fas fa-home"></i>
                                <div>
                                    <h5>Sustainable Housing</h5>
                                    <p>Leveraging technology for affordable, sustainable housing</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="about-visual">
                        <img src="https://images.unsplash.com/photo-1542744173-8e7e53415bb0?w=500&h=400&fit=crop&auto=format" 
                             alt="Cloud Technology Architecture"
                             class="about-image">
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Projects Section -->
    <section id="portfolio" class="section-projects">
        <div class="container">
            <div class="section-header text-center">
                <span class="section-label">Featured Projects</span>
                <h2 class="section-title">Cloud Solutions for Urban Development</h2>
                <p class="section-description">Transforming Ghana's urban landscape through AWS cloud technology</p>
            </div>
            
            <div class="projects-grid">
                <div class="project-card">
                    <div class="project-image">
                        <img src="https://images.unsplash.com/photo-1551288049-bebda4e38f71?w=400&h=250&fit=crop&auto=format" 
                             alt="Urban Growth Analysis Dashboard">
                        <div class="project-overlay">
                            <div class="project-tags">
                                <span class="project-tag">AWS QuickSight</span>
                                <span class="project-tag">Data Analytics</span>
                            </div>
                        </div>
                    </div>
                    <div class="project-content">
                        <h3>Urban Growth Analysis</h3>
                        <p>Data-driven analysis of Accra's urban development patterns using AWS QuickSight for informed housing policy decisions.</p>
                        <div class="project-actions">
                            <a href="#" class="btn btn-primary">View Case Study</a>
                        </div>
                    </div>
                </div>
                
                <div class="project-card">
                    <div class="project-image">
                        <img src="https://images.unsplash.com/photo-1627398242454-45a1465c2479?w=400&h=250&fit=crop&auto=format" 
                             alt="Cloud Infrastructure Diagram">
                        <div class="project-overlay">
                            <div class="project-tags">
                                <span class="project-tag">AWS EC2</span>
                                <span class="project-tag">CloudFormation</span>
                            </div>
                        </div>
                    </div>
                    <div class="project-content">
                        <h3>Cloud Infrastructure Design</h3>
                        <p>Scalable AWS infrastructure architecture for urban development applications and housing management systems.</p>
                        <div class="project-actions">
                            <a href="#" class="btn btn-primary">View Architecture</a>
                        </div>
                    </div>
                </div>
                
                <div class="project-card">
                    <div class="project-image">
                        <img src="https://images.unsplash.com/photo-1558002038-1055900df638?w=400&h=250&fit=crop&auto=format" 
                             alt="IoT Smart City Solutions">
                        <div class="project-overlay">
                            <div class="project-tags">
                                <span class="project-tag">AWS IoT</span>
                                <span class="project-tag">Smart Cities</span>
                            </div>
                        </div>
                    </div>
                    <div class="project-content">
                        <h3>Smart City IoT Platform</h3>
                        <p>IoT solutions using AWS IoT Core for environmental monitoring and urban infrastructure management in Ghanaian cities.</p>
                        <div class="project-actions">
                            <a href="#" class="btn btn-primary">View Platform</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Skills Section -->
    <section id="skills" class="section-skills">
        <div class="container">
            <div class="section-header text-center">
                <span class="section-label">Technical Expertise</span>
                <h2 class="section-title">Skills & Proficiencies</h2>
            </div>
            
            <div class="skills-container">
                <div class="skill-category">
                    <h4><i class="fas fa-cloud me-2"></i>Cloud Technologies</h4>
                    <div class="skill-list">
                        <div class="skill-item">
                            <span class="skill-name">AWS Services (EC2, S3, Lambda)</span>
                            <div class="skill-bar">
                                <div class="skill-progress" data-width="90"></div>
                            </div>
                            <span class="skill-percentage">90%</span>
                        </div>
                        <div class="skill-item">
                            <span class="skill-name">Cloud Architecture</span>
                            <div class="skill-bar">
                                <div class="skill-progress" data-width="85"></div>
                            </div>
                            <span class="skill-percentage">85%</span>
                        </div>
                        <div class="skill-item">
                            <span class="skill-name">Infrastructure as Code</span>
                            <div class="skill-bar">
                                <div class="skill-progress" data-width="80"></div>
                            </div>
                            <span class="skill-percentage">80%</span>
                        </div>
                    </div>
                </div>
                
                <div class="skill-category">
                    <h4><i class="fas fa-chart-line me-2"></i>Data & Analytics</h4>
                    <div class="skill-list">
                        <div class="skill-item">
                            <span class="skill-name">Data Analysis & Visualization</span>
                            <div class="skill-bar">
                                <div class="skill-progress" data-width="85"></div>
                            </div>
                            <span class="skill-percentage">85%</span>
                        </div>
                        <div class="skill-item">
                            <span class="skill-name">AWS QuickSight</span>
                            <div class="skill-bar">
                                <div class="skill-progress" data-width="75"></div>
                            </div>
                            <span class="skill-percentage">75%</span>
                        </div>
                        <div class="skill-item">
                            <span class="skill-name">IoT Data Processing</span>
                            <div class="skill-bar">
                                <div class="skill-progress" data-width="70"></div>
                            </div>
                            <span class="skill-percentage">70%</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Elevator Pitch Section -->
    <section id="elevator-pitch" class="section-pitch">
        <div class="container">
            <div class="section-header text-center">
                <span class="section-label">Video Introduction</span>
                <h2 class="section-title">My Elevator Pitch</h2>
                <p class="section-description">60-second professional introduction</p>
            </div>
            
            <div class="pitch-container">
                <div class="video-wrapper">
                    <iframe src="https://drive.google.com/file/d/13fMTOYU9eH2AFtB1HNX2Y6xHznJImKo3/preview" 
                            allow="autoplay"
                            title="Samuel Wilberforce - AWS Cloud Solutions Architect">
                    </iframe>
                </div>
                <div class="pitch-actions">
                    <a href="https://drive.google.com/file/d/13fMTOYU9eH2AFtB1HNX2Y6xHznJImKo3/view" 
                       target="_blank" 
                       class="btn btn-outline-primary">
                       <i class="fas fa-external-link-alt me-2"></i>Open Full Screen
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section id="contact" class="section-contact">
        <div class="container">
            <div class="section-header text-center">
                <span class="section-label">Get In Touch</span>
                <h2 class="section-title">Let's Build Something Amazing</h2>
                <p class="section-description">Ready to discuss cloud projects or urban development initiatives</p>
            </div>
            
            <div class="contact-content">
                <div class="contact-form">
                    <form id="contactForm">
                        <div class="form-row">
                            <div class="form-group">
                                <label for="name">Full Name</label>
                                <input type="text" id="name" required>
                            </div>
                            <div class="form-group">
                                <label for="email">Email Address</label>
                                <input type="email" id="email" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="message">Project Details</label>
                            <textarea id="message" rows="5" required></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary btn-block">
                            <i class="fas fa-paper-plane me-2"></i>Send Message
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="site-footer">
        <div class="container">
            <div class="footer-content">
                <div class="footer-section">
                    <h5>Samuel Wilberforce</h5>
                    <p>AWS Cloud Solutions Architect focused on sustainable urban development in Ghana.</p>
                </div>
                <div class="footer-section">
                    <h5>Connect</h5>
                    <div class="social-links">
                        <a href="https://www.linkedin.com/in/samuel-wilberforce/" target="_blank">
                            <i class="fab fa-linkedin"></i>
                        </a>
                        <a href="https://github.com/samuel-cell-debug" target="_blank">
                            <i class="fab fa-github"></i>
                        </a>
                        <a href="mailto:your-email@example.com">
                            <i class="fas fa-envelope"></i>
                        </a>
                    </div>
                </div>
                <div class="footer-section">
                    <h5>Quick Links</h5>
                    <nav class="footer-nav">
                        <a href="#home">Home</a>
                        <a href="#portfolio">Projects</a>
                        <a href="#skills">Skills</a>
                        <a href="#contact">Contact</a>
                    </nav>
                </div>
            </div>
            <div class="footer-bottom">
                <p>&copy; 2024 Samuel Wilberforce. All rights reserved. | Built with passion for cloud technology</p>
            </div>
        </div>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    
    <!-- Custom JS -->
    <script src="script.js"></script>
</body>
</html>
HTML

# Create the enhanced CSS file
cat > styles.css << 'CSS'
/* Reset and Base Styles */
:root {
    --primary-blue: #2563eb;
    --primary-dark: #1e40af;
    --primary-light: #3b82f6;
    --terracotta: #ea580c;
    --accent-green: #16a34a;
    --dark-bg: #0f172a;
    --darker-bg: #020617;
    --light-bg: #f8fafc;
    --text-dark: #1e293b;
    --text-light: #64748b;
    --text-lighter: #94a3b8;
    --border-light: #e2e8f0;
    --shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
    --shadow-lg: 0 20px 40px rgba(0, 0, 0, 0.15);
}

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Inter', sans-serif;
    line-height: 1.7;
    color: var(--text-dark);
    overflow-x: hidden;
    background: var(--light-bg);
}

/* Loading Screen */
.page-loader {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: var(--dark-bg);
    display: flex;
    align-items: center;
    justify-content: center;
    z-index: 9999;
    transition: opacity 0.5s ease;
}

.page-loader.loaded {
    opacity: 0;
    pointer-events: none;
}

.loader-content {
    text-align: center;
    color: white;
}

.loader-spinner {
    width: 60px;
    height: 60px;
    border: 3px solid rgba(255, 255, 255, 0.3);
    border-top: 3px solid var(--primary-blue);
    border-radius: 50%;
    animation: spin 1s linear infinite;
    margin: 0 auto 1.5rem;
}

@keyframes spin {
    0% { transform: rotate(0deg); }
    100% { transform: rotate(360deg); }
}

/* Navigation */
.navbar {
    background: rgba(15, 23, 42, 0.95) !important;
    backdrop-filter: blur(20px);
    padding: 1rem 0;
    transition: all 0.3s ease;
    border-bottom: 1px solid rgba(255, 255, 255, 0.1);
}

.navbar-brand {
    font-size: 1.4rem;
    font-weight: 700;
    color: white !important;
}

.navbar-brand i {
    color: var(--primary-blue);
}

.nav-link {
    font-weight: 500;
    color: rgba(255, 255, 255, 0.8) !important;
    margin: 0 0.75rem;
    transition: all 0.3s ease;
    position: relative;
}

.nav-link:hover, .nav-link.active {
    color: white !important;
}

.nav-link.active::after {
    content: '';
    position: absolute;
    bottom: -8px;
    left: 0;
    width: 100%;
    height: 2px;
    background: var(--primary-blue);
}

/* Hero Section */
.hero-section {
    min-height: 100vh;
    display: flex;
    align-items: center;
    position: relative;
    background: linear-gradient(135deg, var(--dark-bg) 0%, var(--darker-bg) 100%);
    overflow: hidden;
}

.hero-background {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1000 1000"><polygon fill="%232563eb" fill-opacity="0.03" points="0,1000 1000,0 1000,1000"/></svg>');
    animation: float 20s ease-in-out infinite;
}

@keyframes float {
    0%, 100% { transform: translateY(0px) rotate(0deg); }
    50% { transform: translateY(-20px) rotate(1deg); }
}

.hero-content {
    position: relative;
    z-index: 2;
    text-align: center;
}

.profile-image-wrapper {
    position: relative;
    display: inline-block;
    margin-bottom: 2rem;
}

.hero-profile-img {
    width: 200px;
    height: 200px;
    border-radius: 50%;
    object-fit: cover;
    border: 4px solid rgba(255, 255, 255, 0.2);
    box-shadow: var(--shadow-lg);
    transition: all 0.3s ease;
}

.profile-badge {
    position: absolute;
    bottom: 10px;
    right: 10px;
    background: var(--primary-blue);
    color: white;
    width: 40px;
    height: 40px;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    border: 3px solid var(--dark-bg);
}

.hero-title {
    font-size: 3.5rem;
    font-weight: 800;
    color: white;
    margin-bottom: 1rem;
    background: linear-gradient(135deg, white, #e2e8f0);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
}

.hero-subtitle {
    font-size: 1.4rem;
    color: rgba(255, 255, 255, 0.8);
    margin-bottom: 2rem;
    max-width: 600px;
    margin-left: auto;
    margin-right: auto;
}

.hero-features {
    margin-bottom: 3rem;
}

.feature-badge {
    display: inline-block;
    background: rgba(255, 255, 255, 0.1);
    color: white;
    padding: 0.5rem 1.5rem;
    border-radius: 50px;
    margin: 0 0.5rem 1rem;
    backdrop-filter: blur(10px);
    border: 1px solid rgba(255, 255, 255, 0.2);
}

.hero-actions .btn {
    padding: 1rem 2.5rem;
    font-weight: 600;
    border-radius: 50px;
    margin: 0 1rem 1rem;
    transition: all 0.3s ease;
}

.scroll-indicator {
    position: absolute;
    bottom: 30px;
    left: 50%;
    transform: translateX(-50%);
}

.scroll-link {
    color: rgba(255, 255, 255, 0.7);
    font-size: 1.5rem;
    animation: bounce 2s infinite;
    transition: color 0.3s ease;
}

.scroll-link:hover {
    color: white;
}

@keyframes bounce {
    0%, 20%, 50%, 80%, 100% { transform: translateY(0); }
    40% { transform: translateY(-10px); }
    60% { transform: translateY(-5px); }
}

/* Section Styles */
section {
    padding: 6rem 0;
}

.section-label {
    display: inline-block;
    background: var(--primary-blue);
    color: white;
    padding: 0.5rem 1.5rem;
    border-radius: 50px;
    font-size: 0.9rem;
    font-weight: 600;
    margin-bottom: 1rem;
    text-transform: uppercase;
    letter-spacing: 0.5px;
}

.section-title {
    font-size: 2.8rem;
    font-weight: 700;
    margin-bottom: 1rem;
    color: var(--text-dark);
}

.section-description {
    font-size: 1.2rem;
    color: var(--text-light);
    max-width: 600px;
    margin: 0 auto;
}

.section-header {
    margin-bottom: 4rem;
}

/* About Section */
.section-about {
    background: white;
}

.about-content {
    padding-right: 2rem;
}

.about-highlights {
    margin-top: 2rem;
}

.highlight-item {
    display: flex;
    align-items: flex-start;
    margin-bottom: 2.5rem;
}

.highlight-item i {
    font-size: 1.8rem;
    color: var(--primary-blue);
    margin-right: 1.5rem;
    margin-top: 0.5rem;
    flex-shrink: 0;
}

.highlight-item h5 {
    font-weight: 600;
    margin-bottom: 0.5rem;
    color: var(--text-dark);
}

.highlight-item p {
    color: var(--text-light);
    margin: 0;
}

.about-image {
    width: 100%;
    border-radius: 20px;
    box-shadow: var(--shadow-lg);
}

/* Projects Section */
.section-projects {
    background: var(--light-bg);
}

.projects-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
    gap: 2rem;
    margin-top: 3rem;
}

.project-card {
    background: white;
    border-radius: 20px;
    overflow: hidden;
    box-shadow: var(--shadow);
    transition: all 0.3s ease;
}

.project-card:hover {
    transform: translateY(-10px);
    box-shadow: var(--shadow-lg);
}

.project-image {
    position: relative;
    height: 220px;
    overflow: hidden;
}

.project-image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: transform 0.3s ease;
}

.project-card:hover .project-image img {
    transform: scale(1.05);
}

.project-overlay {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: linear-gradient(transparent, rgba(0, 0, 0, 0.7));
    display: flex;
    align-items: flex-end;
    padding: 1.5rem;
    opacity: 0;
    transition: opacity 0.3s ease;
}

.project-card:hover .project-overlay {
    opacity: 1;
}

.project-tags {
    display: flex;
    gap: 0.5rem;
    flex-wrap: wrap;
}

.project-tag {
    background: var(--primary-blue);
    color: white;
    padding: 0.3rem 0.8rem;
    border-radius: 15px;
    font-size: 0.8rem;
    font-weight: 500;
}

.project-content {
    padding: 2rem;
}

.project-content h3 {
    font-weight: 600;
    margin-bottom: 1rem;
    color: var(--text-dark);
}

.project-content p {
    color: var(--text-light);
    margin-bottom: 1.5rem;
    line-height: 1.6;
}

.project-actions .btn {
    width: 100%;
}

/* Skills Section */
.section-skills {
    background: white;
}

.skills-container {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(400px, 1fr));
    gap: 3rem;
    margin-top: 3rem;
}

.skill-category {
    background: var(--light-bg);
    padding: 2.5rem;
    border-radius: 20px;
}

.skill-category h4 {
    font-weight: 600;
    margin-bottom: 2rem;
    color: var(--text-dark);
    display: flex;
    align-items: center;
}

.skill-category h4 i {
    color: var(--primary-blue);
    margin-right: 0.75rem;
}

.skill-item {
    display: flex;
    align-items: center;
    margin-bottom: 1.5rem;
    gap: 1rem;
}

.skill-name {
    flex: 1;
    font-weight: 500;
    color: var(--text-dark);
}

.skill-bar {
    flex: 2;
    height: 8px;
    background: var(--border-light);
    border-radius: 10px;
    overflow: hidden;
}

.skill-progress {
    height: 100%;
    background: linear-gradient(90deg, var(--primary-blue), var(--primary-light));
    border-radius: 10px;
    width: 0;
    transition: width 1s ease-in-out;
}

.skill-percentage {
    font-weight: 600;
    color: var(--primary-blue);
    min-width: 3rem;
}

/* Elevator Pitch Section */
.section-pitch {
    background: var(--dark-bg);
    color: white;
}

.section-pitch .section-title,
.section-pitch .section-description {
    color: white;
}

.pitch-container {
    max-width: 800px;
    margin: 0 auto;
}

.video-wrapper {
    border-radius: 20px;
    overflow: hidden;
    box-shadow: var(--shadow-lg);
    margin-bottom: 2rem;
}

.video-wrapper iframe {
    width: 100%;
    height: 450px;
    border: none;
    display: block;
}

.pitch-actions {
    text-align: center;
}

/* Contact Section */
.section-contact {
    background: white;
}

.contact-content {
    max-width: 600px;
    margin: 0 auto;
}

.contact-form {
    background: var(--light-bg);
    padding: 3rem;
    border-radius: 20px;
}

.form-row {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 1.5rem;
    margin-bottom: 1.5rem;
}

.form-group {
    margin-bottom: 1.5rem;
}

.form-group label {
    display: block;
    font-weight: 600;
    margin-bottom: 0.5rem;
    color: var(--text-dark);
}

.form-group input,
.form-group textarea {
    width: 100%;
    padding: 1rem;
    border: 2px solid var(--border-light);
    border-radius: 10px;
    font-size: 1rem;
    transition: all 0.3s ease;
    background: white;
}

.form-group input:focus,
.form-group textarea:focus {
    outline: none;
    border-color: var(--primary-blue);
    box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.1);
}

.btn {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    padding: 1rem 2rem;
    font-weight: 600;
    text-decoration: none;
    border: none;
    border-radius: 10px;
    cursor: pointer;
    transition: all 0.3s ease;
    font-size: 1rem;
}

.btn-primary {
    background: var(--primary-blue);
    color: white;
}

.btn-primary:hover {
    background: var(--primary-dark);
    transform: translateY(-2px);
}

.btn-outline-primary {
    background: transparent;
    color: var(--primary-blue);
    border: 2px solid var(--primary-blue);
}

.btn-outline-primary:hover {
    background: var(--primary-blue);
    color: white;
}

.btn-block {
    width: 100%;
}

/* Footer */
.site-footer {
    background: var(--dark-bg);
    color: white;
    padding: 4rem 0 2rem;
}

.footer-content {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 3rem;
    margin-bottom: 3rem;
}

.footer-section h5 {
    margin-bottom: 1rem;
    color: white;
}

.footer-section p {
    color: var(--text-lighter);
    line-height: 1.6;
}

.social-links {
    display: flex;
    gap: 1rem;
}

.social-links a {
    color: var(--text-lighter);
    font-size: 1.5rem;
    transition: all 0.3s ease;
}

.social-links a:hover {
    color: var(--primary-blue);
    transform: translateY(-3px);
}

.footer-nav {
    display: flex;
    flex-direction: column;
    gap: 0.5rem;
}

.footer-nav a {
    color: var(--text-lighter);
    text-decoration: none;
    transition: color 0.3s ease;
}

.footer-nav a:hover {
    color: var(--primary-blue);
}

.footer-bottom {
    text-align: center;
    padding-top: 2rem;
    border-top: 1px solid rgba(255, 255, 255, 0.1);
    color: var(--text-lighter);
}

/* Responsive Design */
@media (max-width: 768px) {
    .hero-title {
        font-size: 2.5rem;
    }
    
    .hero-subtitle {
        font-size: 1.2rem;
    }
    
    .section-title {
        font-size: 2.2rem;
    }
    
    .projects-grid {
        grid-template-columns: 1fr;
    }
    
    .skills-container {
        grid-template-columns: 1fr;
    }
    
    .form-row {
        grid-template-columns: 1fr;
    }
    
    .about-content {
        padding-right: 0;
        margin-bottom: 3rem;
    }
    
    .hero-actions .btn {
        margin: 0.5rem;
        display: block;
    }
    
    .navbar-nav {
        text-align: center;
        padding: 1rem 0;
    }
    
    .nav-link {
        margin: 0.5rem 0;
    }
}

/* Utility Classes */
.text-center { text-align: center; }
.mb-0 { margin-bottom: 0; }
.mt-0 { margin-top: 0; }
.mb-1 { margin-bottom: 0.5rem; }
.mt-1 { margin-top: 0.5rem; }
.mb-2 { margin-bottom: 1rem; }
.mt-2 { margin-top: 1rem; }
.mb-3 { margin-bottom: 1.5rem; }
.mt-3 { margin-top: 1.5rem; }
.mb-4 { margin-bottom: 2rem; }
.mt-4 { margin-top: 2rem; }

/* Smooth Scrolling */
html {
    scroll-behavior: smooth;
}

section {
    scroll-margin-top: 80px;
}
CSS

# Create the enhanced JavaScript file
cat > script.js << 'JS'
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
JS

echo "✅ Comprehensive fix script created!"
echo "📁 Files created:"
echo "   - index.html (enhanced with better structure)"
echo "   - styles.css (improved aesthetics and responsiveness)" 
echo "   - script.js (enhanced functionality)"
echo ""
echo "🚀 To apply these fixes, run:"
echo "   chmod +x comprehensive-fix.sh"
echo "   ./comprehensive-fix.sh"
echo "   git add . && git commit -m 'COMPREHENSIVE FIX: Enhanced portfolio with reliable image loading and improved design' && git push origin main"
