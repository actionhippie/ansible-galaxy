FROM alpine:3.24@sha256:a2d49ea686c2adfe3c992e47dc3b5e7fa6e6b5055609400dc2acaeb241c829f4

# renovate: datasource=pypi depName=ansible-core
ENV ANSIBLE_CORE_VERSION=2.21.0

RUN apk add --no-cache git bash python3 python3-dev py3-pip && \
    pip3 install --break-system-packages -U ansible-core==${ANSIBLE_CORE_VERSION} && \
    rm -rf /root/.cache

ENTRYPOINT ["/usr/local/bin/entrypoint"]
COPY overlay /
