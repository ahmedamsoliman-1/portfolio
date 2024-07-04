#!/bin/bash

docker build -t ahmedalimsolimansd/portfolio:latest .
# docker buildx build --platform linux/amd64 -t ahmedalimsolimansd/portfolio:latest .


docker push ahmedalimsolimansd/portfolio:latest