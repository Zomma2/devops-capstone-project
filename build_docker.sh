#!/usr/bin/env bash


# Build image and add a descriptive tag
docker build --tag=helloapp .


# List docker images
docker image list