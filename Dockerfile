FROM ubuntu:devel

RUN apt-get update && apt-get install -y cargo
RUN cargo install typstyle --locked

ENV PATH /root/.cargo/bin:$PATH

COPY entrypoint.sh .

ENTRYPOINT ["/entrypoint.sh"]
