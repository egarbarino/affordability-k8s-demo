#!/bin/sh
set -x
kubectl scale deployment affordability --replicas=2
