#!/bin/sh

# this will run a cluster of redis servers on ports 6381 and 6382
# will also run three redis sentinel at ports 26381, 26382, and 26383


CACHE_OPTIONS=""
if [ "$AS_CACHE" == "yes" ]
then
    CACHE_OPTIONS="--appendonly no --save '' --maxmemory-policy allkeys-lru --maxmemory-samples 5"
fi

tmux new -s redis-6381 -d "redis-server ./redis-config.conf --port 6381 $CACHE_OPTIONS"
tmux new -s redis-6382 -d "redis-server ./redis-config.conf --port 6382 --slaveof localhost 6381 $CACHE_OPTIONS"

tmux new -s redis-sentinel-26381 -d "redis-server ./redis-sentinel-config.conf --sentinel --port 26381"
tmux new -s redis-sentinel-26382 -d "redis-server ./redis-sentinel-config.conf --sentinel --port 26382"
tmux new -s redis-sentinel-26383 -d "redis-server ./redis-sentinel-config.conf --sentinel --port 26383"


