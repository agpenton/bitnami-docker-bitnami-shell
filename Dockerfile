FROM docker.io/bitnami/minideb:buster
LABEL maintainer "Asdrubal Gonzalez <contai>"

COPY prebuildfs /
# Install required system packages and dependencies
RUN install_packages curl procps

ENV BITNAMI_APP_NAME="bitnami-shell" \
    BITNAMI_IMAGE_VERSION="10-debian-10-r105" \
    OS_ARCH="arm64" \
    OS_FLAVOUR="debian-10" \
    OS_NAME="linux"

