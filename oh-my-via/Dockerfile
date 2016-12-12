FROM alpine:3.4
MAINTAINER Ayaz BADOURALY <ayaz.badouraly@via.ecp.fr>

# Install zsh
RUN apk add --update --no-cache \
		zsh && \
	rm -rf /var/cache/apk/*

# Install oh-my-zsh and oh-my-via
RUN apk add --update --no-cache --virtual build-dependencies \
		git && \
	git clone git://github.com/robbyrussell/oh-my-zsh.git /opt/oh-my-zsh && \
	git clone https://github.com/badouralix/oh-my-via.git /opt/oh-my-zsh/custom/themes/oh-my-via && \
	apk del build-dependencies && \
	rm -rf /var/cache/apk/*

COPY zshrc /etc/zsh/zshrc

ENTRYPOINT ["/bin/zsh"]

