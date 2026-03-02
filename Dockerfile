FROM alpine:3.23@sha256:25109184c71bdad752c8312a8623239686a9a2071e8825f20acb8f2198c3f659

# renovate: datasource=pypi depName=ansible-core
ENV ANSIBLE_CORE_VERSION=2.20.3

RUN apk add --no-cache git bash python3 python3-dev py3-pip && \
    pip3 install --break-system-packages -U ansible-core==${ANSIBLE_CORE_VERSION} && \
    rm -rf /root/.cache

ENTRYPOINT ["/usr/local/bin/entrypoint"]
COPY overlay /
