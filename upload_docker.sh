#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Create dockerpath
dockerpath=davidshare/housing-prices

# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u davidshare -p $1
docker tag housing-prices $dockerpath:latest

# Push image to a docker repository
docker push $dockerpath:latest
