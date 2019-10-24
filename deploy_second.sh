#!/bin/sh
set -x
kubectl set image deployment/affordability affordability=egarbarino/affordability2-image
