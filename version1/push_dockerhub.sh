#!/bin/sh
set -x
docker tag affordability1-image:latest egarbarino/affordability1-image:latest
docker push egarbarino/affordability1-image
