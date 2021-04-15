FROM redis:alpine

RUN apk add tmux

COPY redis /data/redis
COPY sentinel /data/sentinel

COPY entrypoint.sh /data/entrypoint.sh
RUN chmod +x /data/entrypoint.sh
CMD /data/entrypoint.sh; sleep infinity

EXPOSE 6381 6382
EXPOSE 26381 26382 26383
