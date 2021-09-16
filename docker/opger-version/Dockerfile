FROM alpine:3.14

WORKDIR /root/

RUN apk update  \
    && apk upgrade  \
    && apk add curl git wget ca-certificates libc6-compat openssl coreutils unzip bash unzip --no-cache \
    &&  update-ca-certificates

COPY binary/* /usr/bin

RUN chmod +x /usr/bin/version

