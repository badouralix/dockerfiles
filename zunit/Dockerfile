FROM alpine:3.4
MAINTAINER Ayaz BADOURALY <ayaz.badouraly@via.ecp.fr>

# Set default WORKDIR to /app
WORKDIR /app

# Install zsh and utils
RUN apk add --update --no-cache \
		ncurses \
		zsh && \
	rm -rf /var/cache/apk/*

# Install zunit and dependencies
RUN apk add --update --no-cache --virtual build-dependencies \
		git && \
	git clone --depth=1 https://github.com/molovo/color /tmp/color && \
		cp /tmp/color/color.zsh /usr/local/bin/color && \
		chmod +x /usr/local/bin/color && \
	git clone --depth=1 https://github.com/molovo/revolver /tmp/revolver && \
		cp /tmp/revolver/revolver /usr/local/bin/revolver && \
		chmod +x /usr/local/bin/revolver && \
	git clone --depth=1 --branch version-0.3.x https://github.com/molovo/zunit /tmp/zunit && \
		cp /tmp/zunit/zunit /usr/local/bin/zunit && \
		chmod +x /usr/local/bin/zunit && \
	apk del build-dependencies && \
	rm -rf /tmp/* /var/cache/apk/*

# Set default ENTRYPOINT and CMD
COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["zunit"]

