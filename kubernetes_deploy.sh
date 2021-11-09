#!/usr/bin/env bash

# This is your Docker ID/path
dockerpath="omarhazem6/helloapp"

# Run the Docker Hub container with kubernetes
./kubectl run helloapp --image=$dockerpath --port=80 --labels app=helloapp

# Run the Docker Hub container with kubernetes
./kubectl get pods

# Step 4:
# Forward the container port to a host
./kubectl port-forward helloapp 8000:80
