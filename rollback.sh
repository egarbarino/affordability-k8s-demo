#!/bin/sh
set -x
kubectl rollout undo deploy/affordability
