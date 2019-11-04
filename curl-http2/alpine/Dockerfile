FROM alpine:latest
LABEL maintainer="ayaz.badouraly@via.ecp.fr"

# Install curl package as nowadays it comes with http2 support
RUN apk add --no-cache curl

# Setup entrypoint and cmd
COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["curl", "--http2"]
