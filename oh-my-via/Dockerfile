FROM alpine:3.4

# Set non-built-time labels
LABEL org.opencontainers.image.authors="Ayaz BADOURALY" \
      org.opencontainers.image.description="Docker image to try oh-my-via zsh theme out"

# Install zsh and oh-my-zsh
# Not removing git in order to test theme prompt
RUN apk add --update --no-cache \
		git \
		zsh && \
	rm -rf /var/cache/apk/* && \
	git clone --depth=1 git://github.com/robbyrussell/oh-my-zsh.git /opt/oh-my-zsh && \
	mkdir -p /etc/skel && touch /etc/skel/.zshrc && \
	adduser -Ds /bin/zsh user

# Install oh-my-via
RUN git clone --depth=1 https://github.com/badouralix/oh-my-via.git /opt/oh-my-zsh/custom/themes/oh-my-via

COPY zshrc /etc/zsh/zshrc

ENTRYPOINT ["/bin/zsh"]

