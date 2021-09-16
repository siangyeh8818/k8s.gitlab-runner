#!/bin/bash

IMAGE_NAME="reg.ffglobaltech.com/opger-version"
DATE=$(date +"%Y%m%d")
IMAGE_TAG=$DATE-alpine-v1
IMAGE_FLLL_NAME=$IMAGE_NAME:$IMAGE_TAG

echo $IMAGE_FLLL_NAME

docker build -t=$IMAGE_FLLL_NAME .
docker push $IMAGE_FLLL_NAME
