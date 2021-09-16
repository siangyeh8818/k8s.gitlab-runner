FROM docker:19.03.13-dind

RUN apk update \
    &&  apk add bash git curl wget
RUN adduser -S -G dockremap gitlab-runner
RUN wget https://get.helm.sh/helm-v3.6.3-linux-amd64.tar.gz \
    && tar zxvf helm-v3.6.3-linux-amd64.tar.gz \
    && cp linux-amd64/helm /usr/local/bin/ \
    && cp linux-amd64/helm /usr/bin/ \
    && rm -rf helm-v3.6.3-linux-amd64.tar.gz \
    && rm -rf linux-amd64


#COPY binary/* /usr/bin

#RUN chmod 777 /usr/bin/yq

RUN echo "http://dl-4.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories \
    && apk update \
    && apk add yq --no-cache
RUN helm plugin install --version master https://github.com/sonatype-nexus-community/helm-nexus-push.git || true
COPY push.sh /root/.local/share/helm/plugins/helm-nexus-push.git/ 
RUN chmod +x /root/.local/share/helm/plugins/helm-nexus-push.git/push.sh
