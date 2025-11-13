FROM rust:1.88-slim

RUN cargo install typstyle --locked

ENV PATH=/root/.cargo/bin:$PATH

COPY entrypoint.sh .

ENTRYPOINT ["/entrypoint.sh"]
