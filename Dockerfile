FROM alpine:3.23

ADD --chmod=755 https://github.com/typstyle-rs/typstyle/releases/latest/download/typstyle-x86_64-unknown-linux-musl /usr/local/bin/typstyle

COPY entrypoint.sh .

ENTRYPOINT ["/entrypoint.sh"]
