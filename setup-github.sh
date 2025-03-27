#!/bin/bash

# Script to initialize a Git repository and prepare for GitHub hosting

echo "Setting up Git repository for ACA Website..."

# Initialize Git repository
git init

# Create .gitignore file
cat > .gitignore << EOL
# System files
.DS_Store
Thumbs.db
desktop.ini

# Editor directories and files
.idea/
.vscode/
*.swp
*.swo

# Logs
*.log

# Dependency directories
node_modules/
EOL

# Add all files to the repository
git add .

# Make initial commit
git commit -m "Initial commit: ACA Website"

echo "Git repository initialized with initial commit."
echo ""
echo "To host this website on GitHub, follow these steps:"
echo ""
echo "1. Create a new repository on GitHub (https://github.com/new)"
echo "2. Connect your local repository to GitHub:"
echo "   git remote add origin https://github.com/YOUR-USERNAME/REPOSITORY-NAME.git"
echo "3. Push your code to GitHub:"
echo "   git push -u origin main"
echo ""
echo "4. To enable GitHub Pages:"
echo "   - Go to your repository on GitHub"
echo "   - Click on 'Settings'"
echo "   - Scroll down to 'GitHub Pages' section"
echo "   - Select 'main' branch as the source"
echo "   - Click 'Save'"
echo ""
echo "Your website will be published at: https://YOUR-USERNAME.github.io/REPOSITORY-NAME/"