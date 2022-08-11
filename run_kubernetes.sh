#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# This is your Docker ID/path
dockerpath=davidshare/housing-prices

# Run the Docker Hub container with kubernetes
kubectl run housing-prices --image=$dockerpath

# list the pods
kubectl get pods

# Forward the container port to a host
kubectl port-forward housing-prices 8000:80

