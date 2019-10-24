#!/bin/sh
set -x
kubectl run affordability --image=egarbarino/affordability1-image --port=80 --replicas=3  
kubectl expose deployment affordability --type="LoadBalancer"
