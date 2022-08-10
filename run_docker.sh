#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Build image and add a descriptive tag
docker build -t=housing-prices .

# List docker images
docker images

# Run flask app
docker run -p 8000:80 housing-prices