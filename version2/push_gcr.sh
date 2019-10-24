#!/bin/sh
set -x
docker tag affordability2-image gcr.io/peak-lattice-248608/affordability2-image 
docker push gcr.io/peak-lattice-248608/affordability2-image 
