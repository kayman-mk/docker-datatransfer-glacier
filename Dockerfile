FROM alpine:3.12

RUN apk update --no-cache && apk add --no-cache perl perl-libwww perl-json-xs perl-io-socket-ssl perl-app-cpanminus make git
RUN cpanm -i LWP::Protocol::https

RUN mkdir -p /srv
RUN git clone https://github.com/vsespb/mt-aws-glacier.git /srv/bin
