FROM alpine

ARG AWS_ACCESS_KEY_ID
ARG AWS_SECRET_ACCESS_KEY
ARG AWS_REGION


RUN apk add --update \
    bash \
    python \
    py-pip \
    groff \
    less \
    mailcap \
    curl && \
    pip install --upgrade pip && \
    pip install --upgrade awscli s3cmd python-magic && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*

SHELL ["/bin/bash", "-c"]

LABEL author=thomas.foerster@gfk.com

COPY script.sh /tmp/script.sh
RUN chmod 777 /tmp/script.sh

ENTRYPOINT ["/tmp/script.sh"]


