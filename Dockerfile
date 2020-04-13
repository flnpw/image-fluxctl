FROM busybox

ARG VERSION=1.19.0
ENV ARTIFACT=fluxctl_linux_amd64
ENV BINARY=fluxctl
ENV URL=https://github.com/fluxcd/flux/releases/download/$VERSION/$ARTIFACT

ADD $URL /usr/local/bin/$BINARY
RUN set -exuo pipefail; \
  chmod 755 /usr/local/bin/$BINARY

ENTRYPOINT ["fluxctl"]
CMD ["--help"]
