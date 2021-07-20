FROM google/cloud-sdk:alpine

WORKDIR /root/

RUN apk update  \
    && apk upgrade  \
    && gcloud components install kubectl \
    && apk add  docker curl git wget ca-certificates libc6-compat openssl coreutils unzip bash python3 python3-dev unzip --no-cache \
    &&  update-ca-certificates

RUN wget https://get.helm.sh/helm-v3.2.1-linux-amd64.tar.gz;tar zxvf helm-v3.2.1-linux-amd64.tar.gz;cp linux-amd64/helm /usr/local/bin/;cp linux-amd64/helm /usr/bin/;rm -rf helm-v3.2.1-linux-amd64.tar.gz;rm -rf linux-amd64

COPY binary/* /usr/bin

RUN wget https://github.com/mikefarah/yq/releases/download/3.4.1/yq_linux_amd64 \
    && mv yq_linux_amd64 /usr/bin/yq
 
RUN chmod +x /usr/bin/yq \
    && chmod +x /usr/bin/helmoperator

