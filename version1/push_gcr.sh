#!/bin/sh
set -x
docker tag affordability1-image gcr.io/peak-lattice-248608/affordability1-image 
docker push gcr.io/peak-lattice-248608/affordability1-image 
