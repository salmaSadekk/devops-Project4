#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="salooom/predict"

# Step 2
kubectl run prediction-pod --image=$dockerpath --port=80


# Step 3:
kubectl get pod

# Step 4:
kubectl port-forward  prediction-pod 8000:80

