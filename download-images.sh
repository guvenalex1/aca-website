#!/bin/bash

# Script to download placeholder images for the ACA website
# This script uses curl to download free images from placeholder services

# Create images directory if it doesn't exist
mkdir -p images

# Define the image URLs to download
# Using placeholder services and Unsplash for free stock images

# Hero background
curl -o images/hero-bg.jpg "https://source.unsplash.com/1600x900/?university,campus" 

# Project images
curl -o images/newspaper-project.jpg "https://source.unsplash.com/800x600/?newspaper,journalism"
curl -o images/ai-workshop.jpg "https://source.unsplash.com/800x600/?classroom,technology"
curl -o images/tech-literacy.jpg "https://source.unsplash.com/800x600/?computer,education"

# About page images
curl -o images/mission.jpg "https://source.unsplash.com/800x600/?education,mission"
curl -o images/story.jpg "https://source.unsplash.com/800x600/?university,students"

# Team member images
curl -o images/team-1.jpg "https://source.unsplash.com/400x400/?portrait,professional"
curl -o images/team-2.jpg "https://source.unsplash.com/400x400/?portrait,woman"
curl -o images/team-3.jpg "https://source.unsplash.com/400x400/?portrait,man"
curl -o images/team-4.jpg "https://source.unsplash.com/400x400/?portrait,student"

# Partner logos (using placeholder service)
curl -o images/partner-1.png "https://via.placeholder.com/150x80/f8f9fa/212529?text=Georgia+Tech"
curl -o images/partner-2.png "https://via.placeholder.com/150x80/f8f9fa/212529?text=Atlanta+Schools"
curl -o images/partner-3.png "https://via.placeholder.com/150x80/f8f9fa/212529?text=Education+Foundation"
curl -o images/partner-4.png "https://via.placeholder.com/150x80/f8f9fa/212529?text=Tech+for+Education"

# Map placeholder
curl -o images/map.jpg "https://source.unsplash.com/1200x600/?map,atlanta"

echo "All images have been downloaded to the images directory."