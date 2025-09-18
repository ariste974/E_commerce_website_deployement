#!/bin/bash
docker stop frontend-container

docker rm -f frontend-container

docker rmi frontend-image

docker build -t frontend-image -f Dockerfile.frontend .

docker run -d -p 3000:3000 --name frontend-container frontend-image


# docker run -it --name frontend-container frontend-image
