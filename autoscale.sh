#!/bin/sh
set -x
kubectl autoscale deployment affordability --min=1 --max=7 --cpu-percent=5
