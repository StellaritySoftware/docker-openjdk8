FROM ubuntu:18.04
MAINTAINER Sergey Podobry <sergey.podobry@stellaritysoftware.com>
LABEL Description="openjdk8 base image"

ENV DEBIAN_FRONTEND noninteractive
ENV TERM linux
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

# install packages
RUN apt-get update && apt-get install -y --no-install-recommends openjdk-8-jdk-headless && rm -rf /var/lib/apt/lists/*
