#!/usr/bin/env bash

# dockerpath="noahgift/flasksklearn"
dockerpath="phermann91/devopscapstone"

# Run in Docker Hub container with kubernetes
kubectl run devopscapstone --image=$dockerpath --port=80

# List kubernetes pods
kubectl get pods

# Forward the container port to host
kubectl port-forward devopscapstone 8000:80
