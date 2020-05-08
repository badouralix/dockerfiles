FROM alpine:latest

# Set non-built-time labels
LABEL org.opencontainers.image.authors="Ayaz BADOURALY"
LABEL org.opencontainers.image.description="Docker image for ZUnit, a powerful unit testing framework for ZSH"

# Set default WORKDIR to /app
WORKDIR /app

# Install zsh and utils
RUN apk add --no-cache ncurses zsh

# Install zunit and dependencies
RUN apk add --no-cache --virtual build-dependencies \
		git && \
	git clone --depth=1 https://github.com/molovo/color /tmp/color && \
		cp /tmp/color/color.zsh /usr/local/bin/color && \
		chmod +x /usr/local/bin/color && \
	git clone --depth=1 https://github.com/molovo/revolver /tmp/revolver && \
		cp /tmp/revolver/revolver /usr/local/bin/revolver && \
		chmod +x /usr/local/bin/revolver && \
	git clone --depth=1 https://github.com/molovo/zunit /tmp/zunit && \
		cd /tmp/zunit && ./build.zsh && \
		cp /tmp/zunit/zunit /usr/local/bin/zunit && \
		chmod +x /usr/local/bin/zunit && \
	apk del build-dependencies && \
	rm -rf /tmp/* /var/tmp/*

# Set default ENTRYPOINT and CMD
COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["zunit"]
