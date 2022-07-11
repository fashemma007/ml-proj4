#!/usr/bin/env bash

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=emiwest/udaproj

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

docker login -u emiwest
docker tag udaproj $dockerpath:latest

# Step 3:
# Push image to a docker repository
docker push $dockerpath:latest
