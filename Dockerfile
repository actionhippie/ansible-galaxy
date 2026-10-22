FROM alpine:3.24@sha256:c6b073f8e9e58d881f6ffba6ebf3b9ebd60b9e7d6e8337018c0e68bb5c356873

# renovate: datasource=pypi depName=ansible-core
ENV ANSIBLE_CORE_VERSION=2.21.5

RUN apk add --no-cache git bash python3 python3-dev py3-pip && \
    pip3 install --break-system-packages -U ansible-core==${ANSIBLE_CORE_VERSION} && \
    rm -rf /root/.cache

ENTRYPOINT ["/usr/local/bin/entrypoint"]
COPY overlay /
