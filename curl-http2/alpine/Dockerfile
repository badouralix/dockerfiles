FROM alpine:latest

# Set non-built-time labels
LABEL org.opencontainers.image.authors="Ayaz BADOURALY" \
      org.opencontainers.image.description="Docker image for curl with http2 support"

# Install curl package as nowadays it comes with http2 support
RUN apk add --no-cache curl

# Setup entrypoint and cmd
COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["curl", "--http2"]
