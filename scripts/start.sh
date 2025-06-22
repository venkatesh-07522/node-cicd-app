#!/bin/bash

echo "🔁 Starting Docker container..."

# ECR URI (replace with your actual URI)
ECR_URI="123456789.dkr.ecr.ap-south-1.amazonaws.com/node-cicd-app"

# Pull image
docker pull $ECR_URI:latest

# Run container
docker run -d --name nodeapp -p 80:3000 $ECR_URI:latest

echo "✅ Application started successfully"
