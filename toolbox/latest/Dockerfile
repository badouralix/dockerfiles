FROM debian:latest

# Set non-built-time labels
LABEL org.opencontainers.image.authors="Ayaz BADOURALY"
LABEL org.opencontainers.image.description="Personal collection of useful linux tools"

# Install a bunch of useful packages
RUN apt-get update && \
    apt-get install --assume-yes --no-install-recommends \
            apt-file \
            build-essential \
            ca-certificates \
            curl \
            dnsutils \
            fzf \
            git \
            gnupg \
            htop \
            less \
            locate \
            lsof \
            man-db \
            most \
            mtr-tiny \
            net-tools \
            netcat \
            nmap \
            parallel \
            psmisc \
            pv \
            python3 \
            ripgrep \
            socat \
            ssh \
            strace \
            stress \
            stress-ng \
            sysstat \
            tcpdump \
            tini \
            tldr \
            traceroute \
            tree \
            vim \
            zsh \
            && \
    rm -rf /var/cache/apt/* /var/lib/apt/lists/* && \
    rm -rf /tmp/* /var/tmp/*

# Install oh-my-via
RUN git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git /opt/oh-my-zsh && \
    git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions.git /opt/oh-my-zsh/custom/plugins/zsh-autosuggestions && \
    git clone --depth=1 https://github.com/zsh-users/zsh-completions.git /opt/oh-my-zsh/custom/plugins/zsh-completions && \
    git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git /opt/oh-my-zsh/custom/plugins/zsh-syntax-highlighting && \
    git clone --depth=1 https://github.com/badouralix/oh-my-via.git /opt/oh-my-zsh/custom/themes/oh-my-via

# Upload config files
COPY zshrc /root/.zshrc

# Override entrypoint and default command
ENTRYPOINT [ "tini", "--" ]
CMD [ "/usr/bin/zsh" ]
