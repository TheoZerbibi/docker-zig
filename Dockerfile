FROM debian:12.4@sha256:79becb70a6247d277b59c09ca340bbe0349af6aacb5afa90ec349528b53ce2c9

RUN apt update && apt install -y curl tar xz-utils

ENV ZIGVER=0.11.0

RUN curl https://ziglang.org/download/$ZIGVER/zig-linux-$(uname -m)-$ZIGVER.tar.xz -O && \
    tar xf zig-linux-$(uname -m)-$ZIGVER.tar.xz && \
    mv zig-linux-$(uname -m)-$ZIGVER/* /usr/local/bin/.

WORKDIR /app
