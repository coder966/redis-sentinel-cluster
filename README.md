# Redis Sentinel Cluster Docker Image

This image simulates a Redis cluster of 2 nodes and a Redis Sentinel cluster of 3 nodes.
Redis nodes: master on port `6381` and salve on port `6382`.
Redis Sentinel nodes: ports 26381 through 26383.
Redis Sentinel master group name: `mymaster`.
Redis password: `mypassword`

## How to use this Image

`$ docker run -d -p 6381-6382:6381-6382 -p 26381:26383:26381:26383 coder966/redis-sentinel-cluster:latest`

if you want to configure Redis as an LRU cache, please add `-e "AS_CACHE=yes"`.

## License

```
Copyright 2016 Khalid H. Alharisi

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
