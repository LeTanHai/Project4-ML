#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=letanhai1998/devops-repo-project4:latest
# Step 2
# Run the Docker Hub container with kubernetes
# kubectl create deploy devop-project4-app --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl port-forward pod/devop-project4-app-54f5dd8f5c-kk89x --address 0.0.0.0 8080:80

# Logs
kubectl logs devop-project4-app-54f5dd8f5c-kk89x