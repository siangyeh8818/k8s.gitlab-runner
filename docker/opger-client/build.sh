#!/bin/bash

IMAGE_NAME="nexus-pg.dg-gsc.com/opger-client"
DATE=$(date +"%Y%m%d")
IMAGE_TAG=$DATE-alpine-v10
IMAGE_FLLL_NAME=$IMAGE_NAME:$IMAGE_TAG

echo $IMAGE_FLLL_NAME

docker build -t=$IMAGE_FLLL_NAME .
docker push $IMAGE_FLLL_NAME
