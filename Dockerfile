FROM golang:alpine
MAINTAINER Dan Richards <dan.richards@lush.co.uk>

RUN apk add --no-cache git openssl bzr \
    && go get -u github.com/golang/dep/cmd/dep

ENTRYPOINT ["dep"]
