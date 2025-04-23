#!/bin/bash

# Personal Portfolio GitHub Setup Script
# This script helps set up a new GitHub repository for your personal portfolio

echo "Setting up GitHub repository for your Personal Portfolio..."

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "Error: Git is not installed. Please install Git first."
    exit 1
fi

# Check if GitHub CLI is installed (optional)
HAS_GH=false
if command -v gh &> /dev/null; then
    HAS_GH=true
    echo "GitHub CLI detected. We can use it for easier setup."
fi

# Get GitHub username
read -p "Enter your GitHub username: " GITHUB_USERNAME

# Get repository name (default: personal-portfolio)
read -p "Enter repository name [personal-portfolio]: " REPO_NAME
REPO_NAME=${REPO_NAME:-personal-portfolio}

# Get repository description
read -p "Enter repository description [Personal analytics portfolio website]: " REPO_DESCRIPTION
REPO_DESCRIPTION=${REPO_DESCRIPTION:-"Personal analytics portfolio website"}

# Initialize git repository if not already initialized
if [ ! -d ".git" ]; then
    echo "Initializing Git repository..."
    git init
fi

# Create .gitignore file
echo "Creating .gitignore file..."
cat > .gitignore << EOL
# OS files
.DS_Store
Thumbs.db
desktop.ini

# Editor directories and files
.idea/
.vscode/
*.sublime-project
*.sublime-workspace

# Logs
logs
*.log
npm-debug.log*

# Dependencies
node_modules/

# Environment variables
.env
.env.local
.env.development.local
.env.test.local
.env.production.local
EOL

# Create images directory if it doesn't exist
if [ ! -d "images" ]; then
    echo "Creating images directory..."
    mkdir -p images
fi

# Add all files to git
echo "Adding files to Git..."
git add .

# Commit changes
echo "Committing files..."
git commit -m "Initial commit: Personal portfolio website"

# Create repository on GitHub
if [ "$HAS_GH" = true ]; then
    echo "Creating GitHub repository using GitHub CLI..."
    gh repo create "$REPO_NAME" --public --description "$REPO_DESCRIPTION" --source=. --remote=origin
else
    echo "Creating GitHub repository manually..."
    echo "Please follow these steps:"
    echo "1. Go to https://github.com/new"
    echo "2. Enter '$REPO_NAME' as the repository name"
    echo "3. Enter '$REPO_DESCRIPTION' as the description"
    echo "4. Choose 'Public' visibility"
    echo "5. Click 'Create repository'"
    echo "6. Follow the instructions to push an existing repository from the command line"
    
    read -p "Press Enter when you've created the repository on GitHub..."
    
    # Add remote origin
    echo "Adding remote origin..."
    git remote add origin "https://github.com/$GITHUB_USERNAME/$REPO_NAME.git"
fi

# Push to GitHub
echo "Pushing to GitHub..."
git push -u origin main || git push -u origin master

echo "Setup complete! Your personal portfolio is now on GitHub."
echo "Repository URL: https://github.com/$GITHUB_USERNAME/$REPO_NAME"
echo ""
echo "To deploy your portfolio using GitHub Pages:"
echo "1. Go to your repository settings"
echo "2. Navigate to 'Pages' in the sidebar"
echo "3. Under 'Source', select 'main' branch and '/ (root)' folder"
echo "4. Click 'Save'"
echo "5. Your site will be published at: https://$GITHUB_USERNAME.github.io/$REPO_NAME"