FROM alpine:3.24@sha256:f59abe656b692d901e184be3445e084786602108599d2a51d229c0f5a48c71bf

# renovate: datasource=pypi depName=ansible-core
ENV ANSIBLE_CORE_VERSION=2.22.0

RUN apk add --no-cache git bash python3 python3-dev py3-pip && \
    pip3 install --break-system-packages -U ansible-core==${ANSIBLE_CORE_VERSION} && \
    rm -rf /root/.cache

ENTRYPOINT ["/usr/local/bin/entrypoint"]
COPY overlay /
