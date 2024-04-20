FROM debian:12.5@sha256:b37bc259c67238d814516548c17ad912f26c3eed48dd9bb54893eafec8739c89

RUN apt update && apt install -y curl tar xz-utils

ENV ZIGVER=0.12.0

RUN curl https://ziglang.org/download/$ZIGVER/zig-linux-$(uname -m)-$ZIGVER.tar.xz -O && \
    tar xf zig-linux-$(uname -m)-$ZIGVER.tar.xz && \
    mv zig-linux-$(uname -m)-$ZIGVER/* /usr/local/bin/.

WORKDIR /app
