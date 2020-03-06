#!/bin/env bash

set -e

IMAGE="frankqux/flask"
GIT_VERSION=$(git describe --always --abbrev --tags --long)

# Build and tag docker image.
docker build -t ${IMAGE}:${GIT_VERSION} .
docker tag ${IMAGE}:${GIT_VERSION} ${IMAGE}:latest

# Login and push image to DH.
docker login -u frankqux -p "${DOCKER_PASSWORD}"
docker push ${IMAGE}:${GIT_VERSION}
