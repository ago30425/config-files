FROM ubuntu:18.04

MAINTAINER ago30425@gmail.com

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
    build-essential \
    bash \
    bc \
    binutils \
    build-essential \
    bzip2 \
    cpio \
    g++ \
    gcc \
    git \
    gzip \
    locales \
    libncurses5-dev \
    libdevmapper-dev \
    libsystemd-dev \
    make \
    mercurial \
    whois \
    patch \
    perl \
    python \
    rsync \
    sed \
    tar \
    vim \
    unzip \
    wget \
    bison \
    flex \
    libssl-dev \
    libfdt-dev \
    tzdata

# [Buildroot]
# Refer to https://github.com/AdvancedClimateSystems/docker-buildroot
RUN locale-gen en_US.utf8

RUN git clone git://git.buildroot.net/buildroot --depth=1 --branch=2022.02.1 /root/buildroot

WORKDIR /root/buildroot

# A separate directory to save output files for Linux kernels
ENV O=/root/buildroot/kernel_output

RUN touch .config
RUN touch kernel.config

#VOLUME /root/buildroot/dl
#VOLUME /root/buildroot/kernel_output

RUN ["/bin/bash"]
