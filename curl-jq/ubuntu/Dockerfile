FROM ubuntu:latest

# Set non-built-time labels
LABEL org.opencontainers.image.authors="Ayaz BADOURALY"
LABEL org.opencontainers.image.description="Smallest docker image with curl and jq"

# Install curl and jq
RUN apt-get update && \
    apt-get install --assume-yes --no-install-recommends curl jq && \
    rm -rf /var/cache/apt/* /var/lib/apt/lists/* && \
    rm -rf /tmp/* /var/tmp/*
