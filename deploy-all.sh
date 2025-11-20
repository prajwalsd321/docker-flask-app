#!/bin/bash

# Move to repo root (optional if already in root)
cd "$(dirname "$0")"

echo "Deploying Microservice 1..."
kubectl apply -f microservice1/docker-flask-app.yaml

echo "Deploying Microservice 2..."
kubectl apply -f microservice2/docker-flask2.yaml

echo "Checking Pods..."
kubectl get pods

echo "Checking Services..."
kubectl get svc

echo "Checking Ingress..."
kubectl get ingress
