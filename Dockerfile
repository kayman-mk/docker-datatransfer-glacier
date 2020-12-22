FROM alpine:3.12

RUN apk update --no-cache && apk add --no-cache perl perl-libwww perl-json-xs perl-io-socket-ssl perl-app-cpanminus make
RUN cpanm -i LWP::Protocol::https

RUN mkdir -p /srv/bin
COPY mt-aws-glacier /srv/bin
