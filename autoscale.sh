#!/bin/sh
set -x
kubectl autoscale deployment affordability --min=1 --max=8 --cpu-percent=5
