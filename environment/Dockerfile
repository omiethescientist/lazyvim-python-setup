# hash:sha256:c5ad091cf21896ad525d0b39fb032c536a9b839c2b2f3756c884f07cdccf13d4
ARG REGISTRY_HOST
FROM $REGISTRY_HOST/codeocean/py-julia-r:python3.10.12-R4.2.3-julia1.7.0-ubuntu22.04

ARG DEBIAN_FRONTEND=noninteractive

ARG GIT_ASKPASS
ARG GIT_ACCESS_TOKEN
COPY git-askpass /

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        fzf=0.29.0-1ubuntu0.1 \
        libdbus-1-3=1.12.20-2ubuntu4.1 \
        libegl1=1.4.0-1 \
        libxcb-icccm4=0.4.1-1.1build2 \
        libxcb-image0=0.4.0-2 \
        libxcb-keysyms1=0.4.0-1build3 \
        libxcb-randr0=1.14-3ubuntu3 \
        libxcb-render-util0=0.3.9-1build3 \
        libxcb-xfixes0=1.14-3ubuntu3 \
        libxcb-xinerama0=1.14-3ubuntu3 \
        libxcb-xinput0=1.14-3ubuntu3 \
        libxkbcommon-x11-0=1.4.0-1 \
        nodejs=12.22.9~dfsg-1ubuntu3.6 \
        npm=8.5.1~ds-1 \
        wget=1.21.2-2ubuntu1.1 \
    && rm -rf /var/lib/apt/lists/*

COPY postInstall /
RUN /postInstall
