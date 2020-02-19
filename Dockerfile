FROM alpine:latest

LABEL maintainer="Benjamin Becker<benjamin@corelight.com>"

RUN apk update && \
    apk add git bash && \
    apk -Uuv add groff less python py-pip && \
    pip install awscli && \
    apk --purge -v del py-pip && \
    rm /var/cache/apk/*
