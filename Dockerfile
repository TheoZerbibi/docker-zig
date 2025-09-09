FROM debian:12.12@sha256:7dc1e2b39b0147079a16347915e9583cb2f239d4896fe2beac396b979e5c06a9

RUN apt update && apt install -y curl tar xz-utils

ENV ZIGVER=0.13.0

RUN curl https://ziglang.org/download/$ZIGVER/zig-linux-$(uname -m)-$ZIGVER.tar.xz -O && \
    tar xf zig-linux-$(uname -m)-$ZIGVER.tar.xz && \
    mv zig-linux-$(uname -m)-$ZIGVER/* /usr/local/bin/.

WORKDIR /app
