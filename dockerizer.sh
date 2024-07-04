#!/bin/bash

docker build -t ahmedalimsolimansd/portfolio:3 .
docker run -p 8082:8080 ahmedalimsolimansd/portfolio:3
# docker buildx build --platform linux/amd64 -t ahmedalimsolimansd/portfolio:latest .


# docker push ahmedalimsolimansd/portfolio:latest