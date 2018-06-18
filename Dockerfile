FROM alpine

ARG AWS_ACCESS_KEY_ID
ARG AWS_SECRET_ACCESS_KEY
ARG AWS_REGION


RUN echo "151.101.12.249 dl-cdn.alpinelinux.org" >> /etc/hosts && \
    apk add --update --wait 10 \
    bash \
    python \
    py-pip \
    groff \
    less \
    mailcap \
    curl && \
    pip install --upgrade awscli s3cmd python-magic && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*

SHELL ["/bin/bash", "-c"]

LABEL author=thomas.foerster@gfk.com

COPY script.sh /tmp/

ENTRYPOINT /tmp/script.sh


