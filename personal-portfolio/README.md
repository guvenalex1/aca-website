# Personal Analytics Portfolio

A personal portfolio website designed to showcase data analytics projects using Excel, Python, and SQL. The website has a blog-like feel and is optimized for displaying technical projects with code snippets, visualizations, and detailed explanations.

## Features

- Responsive design that works on desktop, tablet, and mobile devices
- Project filtering by technology (Python, SQL, Excel, Data Visualization)
- Detailed project pages with code snippets and visualizations
- About page with skills and experience
- Contact form for potential collaborations
- Blog section for sharing insights and knowledge

## Technologies Used

- HTML5
- CSS3
- JavaScript (Vanilla JS)
- Font Awesome for icons
- Google Fonts

## Project Structure

```
personal-portfolio/
├── css/
│   ├── normalize.css
│   └── style.css
├── js/
│   └── main.js
├── images/
│   └── (project images will go here)
├── index.html
├── about.html
├── projects.html
├── project-detail.html
├── contact.html
└── README.md
```

## Setup and Installation

1. Clone the repository:
   ```
   git clone https://github.com/yourusername/personal-portfolio.git
   ```

2. Navigate to the project directory:
   ```
   cd personal-portfolio
   ```

3. Open the website in your browser:
   ```
   open index.html
   ```

## Customization

### Adding a New Project

1. Add a new project card to the `projects.html` file following the existing pattern:
   ```html
   <article class="project-card" data-category="your-categories">
       <div class="project-image placeholder-image">
           <div class="image-overlay">
               <i class="fas fa-icon-name"></i>
           </div>
       </div>
       <div class="project-content">
           <h3>Project Title</h3>
           <p>Project description goes here.</p>
           <div class="project-tags">
               <span>Tag 1</span>
               <span>Tag 2</span>
           </div>
           <a href="project-detail.html" class="read-more">View Project</a>
       </div>
   </article>
   ```

2. Create a new project detail page by duplicating `project-detail.html` and updating the content.

### Updating Personal Information

- Edit the about.html file to update your personal information, skills, and experience.
- Update contact information in the contact.html file.
- Replace placeholder images with your own in the images directory.

## Future Enhancements

- Add a dark mode toggle
- Implement a blog section with individual blog posts
- Add a search functionality for projects and blog posts
- Integrate with a backend for the contact form

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- Normalize.css for consistent styling across browsers
- Font Awesome for the icons
- Google Fonts for the typography