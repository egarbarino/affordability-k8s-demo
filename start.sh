#!/bin/sh
set -x
gcloud config set compute/zone europe-west2-c
gcloud container clusters create mortgage-env \
  --issue-client-certificate \
  --enable-basic-auth

