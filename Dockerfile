FROM alpine:3.23.4

ARG TYPSTYLE_VERSION=v0.14.4

RUN apk add --no-cache curl bash

RUN \
  curl -fsSL -o \
    /usr/local/bin/typstyle \
    https://github.com/typstyle-rs/typstyle/releases/download/${TYPSTYLE_VERSION}/typstyle-x86_64-unknown-linux-musl && \
  chmod +x /usr/local/bin/typstyle

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
