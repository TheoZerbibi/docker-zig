FROM debian:12.13@sha256:34e7f0ae7c10a61bfbef6e1b2ed205d9b47bb12e90c50696f729a5c7a01cf1f2

RUN apt update && apt install -y curl tar xz-utils

ENV ZIGVER=0.15.1

RUN curl https://ziglang.org/download/$ZIGVER/zig-linux-$(uname -m)-$ZIGVER.tar.xz -O && \
    tar xf zig-linux-$(uname -m)-$ZIGVER.tar.xz && \
    mv zig-linux-$(uname -m)-$ZIGVER/* /usr/local/bin/.

WORKDIR /app
