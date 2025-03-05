FROM debian:12.9@sha256:35286826a88dc879b4f438b645ba574a55a14187b483d09213a024dc0c0a64ed

RUN apt update && apt install -y curl tar xz-utils

ENV ZIGVER=0.14.0

RUN curl https://ziglang.org/download/$ZIGVER/zig-linux-$(uname -m)-$ZIGVER.tar.xz -O && \
    tar xf zig-linux-$(uname -m)-$ZIGVER.tar.xz && \
    mv zig-linux-$(uname -m)-$ZIGVER/* /usr/local/bin/.

WORKDIR /app
