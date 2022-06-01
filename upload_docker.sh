#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=letanhai1998/devops-repo-project4
# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag devops-repo-project4 $dockerpath
# Step 3:
# Push image to a docker repository
docker login
docker push $dockerpath:latest