ARG UBUNTU_VERSION=20.04
FROM ubuntu:${UBUNTU_VERSION}

ENV DEBIAN_FRONTEND=noninteractive

# Install Snort 3 and libDAQ build dependencies
RUN \
    apt-get update && \
    apt-get install --no-install-recommends -y \
        asciidoc \
        autoconf \
        automake \
        bison \
        build-essential \
        ca-certificates \
        checkinstall \
        cmake \
        curl \
        dblatex \
        flex \
        g++ \
        gawk \
        gdb \
        git \
        libcpputest-dev \
        libdumbnet-dev \
        libfl-dev \
        libflatbuffers-dev \
        libgoogle-perftools-dev \
        libhwloc-dev \
        libhyperscan-dev \
        libluajit-5.1-dev \
        liblzma-dev \
        libmnl-dev \
        libnetfilter-queue-dev \
        libpcap-dev \
        libpcre3-dev \
        libssl-dev \
        libtirpc-dev \
        libtool \
        libunwind-dev \
        make \
        nano \
        pkg-config \
        uuid-dev \
        vim \
        w3m \
        wget \
        zlib1g-dev \
    && apt-get clean && rm -rf /var/lib/apt/lists/*
