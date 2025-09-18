#!/bin/bash

docker rm -f backend2-container

docker rmi backend2-image

docker build -t backend2-image -f Dockerfile.backend2 .

# docker run -d --name backend2-container backend2-image 

# docker exec -it backend2-container /bin/bash 

docker run -it --name backend2-container backend2-image
