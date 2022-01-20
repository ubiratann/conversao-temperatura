#!/bin/bash

IMAGE_NAME=$1
PORT_BIND=$2

echo "Building docker image: ${IMAGE_NAME}"
docker image build . -t $IMAGE_NAME
echo "Runnig containner for ${IMAGE_NAME}"
docker run -d -p ${PORT_BIND}:8080 $IMAGE_NAME