#!/bin/bash

# Script to connect local repository to GitHub and push code

echo "Connecting your local repository to GitHub..."
echo ""
echo "Please enter your GitHub username:"
read github_username

echo "Please enter your repository name (e.g., aca-website):"
read repo_name

# Connect local repository to GitHub
git remote add origin "https://github.com/$github_username/$repo_name.git"

# Verify remote was added
echo ""
echo "Remote repository added:"
git remote -v

# Push code to GitHub
echo ""
echo "Pushing your code to GitHub..."
git push -u origin main || git push -u origin master

echo ""
echo "If the push was successful, your code is now on GitHub!"
echo "Your website repository is at: https://github.com/$github_username/$repo_name"
echo ""
echo "To enable GitHub Pages (optional):"
echo "1. Go to https://github.com/$github_username/$repo_name/settings/pages"
echo "2. Under 'Source', select 'Deploy from a branch'"
echo "3. Select 'main' branch and '/ (root)' folder"
echo "4. Click 'Save'"
echo ""
echo "Once enabled, your website will be published at: https://$github_username.github.io/$repo_name/"