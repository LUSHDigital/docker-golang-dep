FROM golang:1-alpine
MAINTAINER Dan Richards <dan.richards@lush.co.uk>

RUN apk add --no-cache curl git openssl bzr \
    && curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh \
    && apk del curl

ENTRYPOINT ["dep"]
