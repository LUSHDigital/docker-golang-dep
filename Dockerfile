FROM golang:1-alpine
LABEL author="Dan Richards <dan.richards@lush.co.uk>"
LABEL maintainer="Benjamin Cable <ben.cable@lush.co.uk>"

RUN apk add --no-cache curl git openssl bzr \
    && curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh \
    && apk del curl

ENTRYPOINT ["dep"]
