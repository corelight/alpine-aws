FROM alpine:latest

LABEL maintainer="Benjamin Becker<benjamin@corelight.com>"

RUN apk update && \
    apk add git bash && \
    apk -Uuv add groff less python py-pip && \
    pip install awscli && \
    apk --purge -v del py-pip && \
    apk -Uv add ruby ruby-dev ruby-rdoc g++ make && \
    gem install package_cloud && \
    apk --purge -v del g++ make ruby-dev ruby-rdoc && \
    rm /var/cache/apk/*
