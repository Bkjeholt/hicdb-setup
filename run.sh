#!/bin/sh -f
DOCKER_IMAGE_NAME=bkjeholt/hicdb-setup
DOCKER_CONTAINER_NAME=hic-db-setup
DOCKER_CONTAINER_MYSQL_NAME=hic-db
DOCKER_IMAGE_BASE_TAG=${1}

ARCHITECTURE=rpi

echo "------------------------------------------------------------------------"
echo "-- Run image:       $DOCKER_IMAGE_NAME:latest "

DOCKER_IMAGE=${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_BASE_TAG}-${ARCHITECTURE}

echo "------------------------------------------------------------------------"
echo "-- Execute container "
echo "-- Based on image: $DOCKER_IMAGE "
echo "------------------------------------------------------------------------"

docker run -it \
           --rm \
           --link ${DOCKER_CONTAINER_MYSQL_NAME}:mysql \
           --name $DOCKER_CONTAINER_NAME \
           --env DOCKER_CONTAINER_NAME=${DOCKER_CONTAINER_NAME} \
           $DOCKER_IMAGE
