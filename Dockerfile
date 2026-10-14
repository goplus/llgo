# syntax=docker/dockerfile:1

ARG BASE_IMAGE=golang:1.27.0-bookworm
FROM ${BASE_IMAGE} AS unpack

ARG TARGETPLATFORM

# GoReleaser supplies the same complete package that is tested on Linux.
COPY ${TARGETPLATFORM}/*.deb /tmp/llgo.deb
RUN dpkg-deb --extract /tmp/llgo.deb /install

FROM ${BASE_IMAGE}
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential pkg-config libgc-dev libssl-dev zlib1g-dev libffi-dev \
    libcjson-dev libsqlite3-dev libuv1-dev \
    && rm -rf /var/lib/apt/lists/*

COPY --from=unpack /install/ /
ENV PATH="/usr/lib/llgo/crosscompile/clang/bin:${PATH}"
WORKDIR /workspace
CMD ["llgo", "version"]
