FROM debian:latest
LABEL maintainer="ayaz.badouraly@via.ecp.fr"

# Install curl package as nowadays it comes with http2 support
RUN apt update && \
	apt install --assume-yes --no-install-recommends \
		curl && \
	apt clean && \
	rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Setup entrypoint and cmd
COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["curl", "--http2"]
