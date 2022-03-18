#!/bin/bash

# # Check docker is running

if [ -x "$(command -v docker)" ]; then
    echo "Docker installed ✅"
    # command
else
    echo "Please Install docker ⚠️"
    exit
    # command
fi

if ! [ -x "$(command -v minikube)" ]; then
  echo "minikube missing please install"
exit
else
  echo "Minikube installed ✅"
fi

if ! [ -x "$(command -v kubectl)" ]; then
  echo "kubectl missing please install"
exit
else
  echo "Kubectl installed ✅"
fi

# # Start minikube
# minikube start

# Set docker env
eval $(minikube docker-env)        

# Build image
docker build -t simpleapp:latest .

# Deploy with kubectl
kubectl apply -f deployment.yaml

# Check that it's running
kubectl get pods

# #DNS for domain

# #Local host file, check the ip of minikube and put instructions



echo "Please update your host file and point local.ecosia.org to: `minikube ip` " 

echo "You can now access the app http://local.ecosia.org/tree"

