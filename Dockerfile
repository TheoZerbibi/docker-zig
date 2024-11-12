FROM debian:12.8@sha256:10901ccd8d249047f9761845b4594f121edef079cfd8224edebd9ea726f0a7f6

RUN apt update && apt install -y curl tar xz-utils

ENV ZIGVER=0.13.0

RUN curl https://ziglang.org/download/$ZIGVER/zig-linux-$(uname -m)-$ZIGVER.tar.xz -O && \
    tar xf zig-linux-$(uname -m)-$ZIGVER.tar.xz && \
    mv zig-linux-$(uname -m)-$ZIGVER/* /usr/local/bin/.

WORKDIR /app
