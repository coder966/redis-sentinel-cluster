#!/bin/sh

# this will run a cluster of redis servers on ports 6381 and 6382
# will also run three redis sentinel at ports 26381, 26382, and 26383

tmux new -s redis-6381 -d "redis-server ./redis/6381/config.conf"
tmux new -s redis-6382 -d "redis-server ./redis/6382/config.conf"

tmux new -s redis-sentinel-26381 -d "redis-server ./sentinel/26381/config.conf --sentinel"
tmux new -s redis-sentinel-26382 -d "redis-server ./sentinel/26382/config.conf --sentinel"
tmux new -s redis-sentinel-26383 -d "redis-server ./sentinel/26383/config.conf --sentinel"


