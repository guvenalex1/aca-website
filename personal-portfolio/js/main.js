/**
 * Personal Portfolio - Main JavaScript
 * Handles interactivity for the portfolio website
 */

document.addEventListener('DOMContentLoaded', function() {
    // Initialize project filters
    initProjectFilters();
    
    // Initialize contact form
    initContactForm();
    
    // Initialize mobile navigation
    initMobileNav();
});

/**
 * Initialize project filters on the projects page
 */
function initProjectFilters() {
    const filterButtons = document.querySelectorAll('.filter-btn');
    const projectCards = document.querySelectorAll('.project-card');
    
    if (filterButtons.length === 0 || projectCards.length === 0) {
        return; // Not on the projects page
    }
    
    filterButtons.forEach(button => {
        button.addEventListener('click', function() {
            // Remove active class from all buttons
            filterButtons.forEach(btn => btn.classList.remove('active'));
            
            // Add active class to clicked button
            this.classList.add('active');
            
            const filter = this.getAttribute('data-filter');
            
            // Show/hide projects based on filter
            projectCards.forEach(card => {
                if (filter === 'all') {
                    card.style.display = 'block';
                } else {
                    const categories = card.getAttribute('data-category').split(',');
                    if (categories.includes(filter)) {
                        card.style.display = 'block';
                    } else {
                        card.style.display = 'none';
                    }
                }
            });
        });
    });
}

/**
 * Initialize contact form submission
 */
function initContactForm() {
    const contactForm = document.getElementById('contactForm');
    
    if (!contactForm) {
        return; // Not on the contact page
    }
    
    contactForm.addEventListener('submit', function(e) {
        e.preventDefault();
        
        // Get form values
        const name = document.getElementById('name').value;
        const email = document.getElementById('email').value;
        const subject = document.getElementById('subject').value;
        const message = document.getElementById('message').value;
        
        // Basic validation
        if (!name || !email || !subject || !message) {
            alert('Please fill in all fields');
            return;
        }
        
        // In a real implementation, you would send the form data to a server
        // For this demo, we'll just show a success message
        alert(`Thank you for your message, ${name}! I'll get back to you soon.`);
        
        // Reset the form
        contactForm.reset();
    });
}

/**
 * Initialize mobile navigation menu
 */
function initMobileNav() {
    // This is a placeholder for mobile navigation functionality
    // In a real implementation, you would add a hamburger menu for mobile devices
    
    // Example implementation (commented out for now):
    /*
    const header = document.querySelector('header');
    const nav = document.querySelector('nav');
    
    // Create mobile menu button
    const mobileMenuBtn = document.createElement('button');
    mobileMenuBtn.classList.add('mobile-menu-btn');
    mobileMenuBtn.innerHTML = '<i class="fas fa-bars"></i>';
    
    // Add button to header
    header.insertBefore(mobileMenuBtn, nav);
    
    // Toggle navigation on button click
    mobileMenuBtn.addEventListener('click', function() {
        nav.classList.toggle('active');
    });
    */
}

/**
 * Smooth scroll to element
 * @param {string} elementId - The ID of the element to scroll to
 */
function scrollToElement(elementId) {
    const element = document.getElementById(elementId);
    
    if (element) {
        element.scrollIntoView({
            behavior: 'smooth',
            block: 'start'
        });
    }
}

/**
 * Animate elements when they come into view
 * This is a placeholder for a scroll animation feature
 */
function initScrollAnimations() {
    // This would be implemented with Intersection Observer API
    // to add animations when elements come into view
    
    // Example implementation (commented out for now):
    /*
    const animatedElements = document.querySelectorAll('.animate-on-scroll');
    
    const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.classList.add('animated');
                observer.unobserve(entry.target);
            }
        });
    }, {
        threshold: 0.1
    });
    
    animatedElements.forEach(element => {
        observer.observe(element);
    });
    */
}