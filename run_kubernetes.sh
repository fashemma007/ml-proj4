#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=emiwest/udaproj:latest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy udaproj --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get deploy,pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/udaproj-64b88976b7-bl6m2  --address 0.0.0.0 8000:80
