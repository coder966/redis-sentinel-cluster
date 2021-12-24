FROM redis:alpine

RUN apk add tmux

COPY data /data
COPY entrypoint.sh /data/entrypoint.sh

CMD chmod +x /data/entrypoint.sh; /data/entrypoint.sh; sleep infinity

EXPOSE 6381 6382
EXPOSE 26381 26382 26383
