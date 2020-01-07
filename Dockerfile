FROM alpine:latest

MAINTAINER Suleman Hasib

RUN apk add --no-cache curl jq python py-pip && \
    pip install awscli && \
    curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl && \
    chmod +x ./kubectl && \
    mv ./kubectl /usr/local/bin/kubectl
