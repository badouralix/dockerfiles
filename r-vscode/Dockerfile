FROM debian:buster

# Set non-built-time labels
LABEL org.opencontainers.image.authors="Ayaz BADOURALY"
LABEL org.opencontainers.image.description="Remote container for R programming with vscode"

# Set R_VARIANT build arg to override the R version to be used
# 40 for R 4.0 (default), 35 for R 3.5
ARG R_VARIANT=40

# This Dockerfile adds a non-root user with sudo access. Use the "remoteUser"
# property in devcontainer.json to use it. On Linux, the container user's GID/UIDs
# will be updated to match your local UID/GID (when using the dockerFile property).
# See https://aka.ms/vscode-remote/containers/non-root-user for details.
ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

# Set to false to skip installing zsh and Oh My ZSH!
ARG INSTALL_ZSH="false"

# Location and expected SHA for common setup script - SHA generated on release
ARG COMMON_SCRIPT_SOURCE="https://raw.githubusercontent.com/microsoft/vscode-dev-containers/master/script-library/common-debian.sh"
ARG COMMON_SCRIPT_SHA="dev-mode"

# Avoid warnings by switching to noninteractive
ENV DEBIAN_FRONTEND=noninteractive

# Configure apt and install packages
RUN apt-get update && \
    apt-get install --assume-yes --no-install-recommends apt-utils ca-certificates dialog wget && \
    #
    # Verify git, common tools / libs installed, add/modify non-root user, optionally install zsh
    wget -q -O /tmp/common-setup.sh $COMMON_SCRIPT_SOURCE && \
    if [ "$COMMON_SCRIPT_SHA" != "dev-mode" ]; then echo "$COMMON_SCRIPT_SHA /tmp/common-setup.sh" | sha256sum -c - ; fi && \
    /bin/bash /tmp/common-setup.sh "$INSTALL_ZSH" "$USERNAME" "$USER_UID" "$USER_GID" && \
    rm /tmp/common-setup.sh && \
    #
    # *********************************************************************
    # * Uncomment this section to use RUN to install other dependencies.  *
    # * See https://aka.ms/vscode-remote/containers/dockerfile-run        *
    # *********************************************************************
    # Install r-base, r-languageserver and radian dependencies
    apt-get install --assume-yes --no-install-recommends \
            build-essential \
            gnupg \
            libcurl4-openssl-dev \
            libssl-dev \
            libxml2-dev \
            libz-dev \
            python3 \
            python3-pip \
            && \
    # Install r-base from https://cloud.r-project.org/bin/linux/debian/
    APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=true apt-key adv --keyserver keys.gnupg.net --recv-key "E19F5F87128899B192B1A2C2AD5F960A256A04AF" && \
    echo "deb http://cloud.r-project.org/bin/linux/debian buster-cran$R_VARIANT/" > /etc/apt/sources.list.d/r-project.list && \
    apt-get update && \
    apt-get install --assume-yes --target-release buster-cran$R_VARIANT r-base && \
    # Install r-languageserver
    Rscript -e 'install.packages("languageserver", repos="https://cloud.r-project.org/")' && \
    # Install radian
    python3 -m pip install --upgrade setuptools wheel && \
    python3 -m pip install --upgrade radian && \
    #
    # Clean up
    rm -rf /var/cache/apt/* var/lib/apt/lists/* && \
    rm -rf /tmp/* /var/tmp/*

# Switch back to dialog for any ad-hoc use of apt-get
ENV DEBIAN_FRONTEND=dialog

# Setup entrypoint and cmd
CMD [ "sleep", "inf" ]
