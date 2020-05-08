FROM debian:latest

# Set non-built-time labels
LABEL org.opencontainers.image.authors="Ayaz BADOURALY"
LABEL org.opencontainers.image.description="Docker image for curl with http2 support"

# Install curl package as nowadays it comes with http2 support
RUN apt update && \
	apt install --assume-yes --no-install-recommends curl && \
	rm -rf /var/cache/apt/* /var/lib/apt/lists/* && \
	rm -rf /tmp/* /var/tmp/*

# Setup entrypoint and cmd
COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["curl", "--http2"]
