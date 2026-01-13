FROM debian:13.3@sha256:5cf544fad978371b3df255b61e209b373583cb88b733475c86e49faa15ac2104

RUN apt update && apt install -y curl tar xz-utils

ENV ZIGVER=0.13.0

RUN curl https://ziglang.org/download/$ZIGVER/zig-linux-$(uname -m)-$ZIGVER.tar.xz -O && \
    tar xf zig-linux-$(uname -m)-$ZIGVER.tar.xz && \
    mv zig-linux-$(uname -m)-$ZIGVER/* /usr/local/bin/.

WORKDIR /app
