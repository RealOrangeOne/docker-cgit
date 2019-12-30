FROM lsiobase/nginx:3.11

RUN apk add --no-cache --upgrade cgit fcgiwrap highlight && \
    rm -rf /tmp/*

COPY root/ /
