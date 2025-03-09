FROM ubuntu:latest

# Set non-built-time labels
LABEL org.opencontainers.image.authors="Ayaz BADOURALY"
LABEL org.opencontainers.image.description="Smallest docker image with curl, jq and yq"

# Install curl, jq and yq
RUN apt-get update && \
    apt-get install --assume-yes --no-install-recommends curl jq yq && \
    rm -rf /var/cache/apt/* /var/lib/apt/lists/* && \
    rm -rf /tmp/* /var/tmp/*
