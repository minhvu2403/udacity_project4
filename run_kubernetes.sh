#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
docker_path=vuvm1

# Step 2
# Create a deployment in Kubernetes with the specified image
kubectl create deploy project-ml-microservice-kubernetes --image="$docker_path/project-ml:v1.0.2"


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment.apps/project-ml-microservice-kubernetes 8000:80
