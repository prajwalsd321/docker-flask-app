#!/bin/bash

DOCKER_USERNAME="prajwalsd"
IMAGE_NAME="docker-flask2-app"
TAG="latest"
YAML_FILE="docker-flask2.yaml"

echo "Logging in to Docker Hub..."
docker login -u "$DOCKER_USERNAME"

echo "Building Docker image..."
docker build -t $DOCKER_USERNAME/$IMAGE_NAME:$TAG .

echo "Pushing image..."
docker push $DOCKER_USERNAME/$IMAGE_NAME:$TAG

echo "Deploying to Kubernetes..."
kubectl apply -f $YAML_FILE

kubectl get pods
