#!/bin/bash

docker rm -f `docker ps -a -q`
docker build -t local/jenkins . && docker run --name jenkins -d -p 80:8080 -p 50000:50000 local/jenkins && docker logs -f `docker ps -a -q`
