#!/bin/bash

IMAGE_NAME="nexus-pg.dg-gsc.com/qt-docker"
DATE=$(date +"%Y%m%d")
IMAGE_TAG=19.03.13-dind-$DATE-v12
IMAGE_FLLL_NAME=$IMAGE_NAME:$IMAGE_TAG

echo $IMAGE_FLLL_NAME

docker build -t=$IMAGE_FLLL_NAME .
docker push $IMAGE_FLLL_NAME
