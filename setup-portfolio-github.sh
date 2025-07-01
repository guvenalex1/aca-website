#!/bin/bash

# Script to set up a GitHub repository for Alex_Guven_Portfolio

# Colors for better readability
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}Setting up GitHub repository for Alex_Guven_Portfolio${NC}"

# Check if the directory exists, if not create it
if [ ! -d "/Users/alexguven/Documents/Alex_Guven_Portfolio" ]; then
    echo -e "${BLUE}Creating directory /Users/alexguven/Documents/Alex_Guven_Portfolio${NC}"
    mkdir -p /Users/alexguven/Documents/Alex_Guven_Portfolio
fi

# Navigate to the directory
cd /Users/alexguven/Documents/Alex_Guven_Portfolio

# Initialize git repository if .git doesn't exist
if [ ! -d ".git" ]; then
    echo -e "${BLUE}Initializing Git repository...${NC}"
    git init
    echo -e "${GREEN}Git repository initialized!${NC}"
else
    echo -e "${GREEN}Git repository already exists!${NC}"
fi

# Create a README.md file if it doesn't exist
if [ ! -f "README.md" ]; then
    echo -e "${BLUE}Creating README.md file...${NC}"
    echo "# Alex Guven Portfolio" > README.md
    echo "Analytics projects website" >> README.md
    echo -e "${GREEN}README.md created!${NC}"
fi

# Add files to git
echo -e "${BLUE}Adding files to Git...${NC}"
git add .

# Commit changes
echo -e "${BLUE}Committing changes...${NC}"
git commit -m "Initial commit"

echo -e "${GREEN}Local repository setup complete!${NC}"
echo -e "${BLUE}Now, please go to GitHub and create a new repository named 'Alex_Guven_Portfolio'${NC}"
echo -e "${BLUE}After creating the repository, run the following commands:${NC}"
echo -e "${GREEN}git remote add origin https://github.com/YOUR-USERNAME/Alex_Guven_Portfolio.git${NC}"
echo -e "${GREEN}git branch -M main${NC}"
echo -e "${GREEN}git push -u origin main${NC}"
echo -e "${BLUE}Replace 'YOUR-USERNAME' with your GitHub username${NC}"

echo -e "${GREEN}Done!${NC}"