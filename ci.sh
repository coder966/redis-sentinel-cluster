#!/bin/sh

docker build . -t coder966/redis-sentinel-cluster:0.0.2
docker push coder966/redis-sentinel-cluster:0.0.2

docker build . -t coder966/redis-sentinel-cluster:latest
docker push coder966/redis-sentinel-cluster:latest
