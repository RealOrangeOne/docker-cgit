FROM lsiobase/nginx:3.14

RUN apk add --no-cache --upgrade cgit fcgiwrap highlight && \
    rm -rf /tmp/*

COPY root/ /
