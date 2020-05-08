FROM fedora:latest

# Set non-built-time labels
LABEL org.opencontainers.image.authors="Ayaz BADOURALY"
LABEL org.opencontainers.image.description="Only R with its languageserver"

# Install languageserver dependencies
RUN dnf install --assumeyes --setopt=install_weak_deps=False \
        @development-tools \
        libcurl-devel \
        libxml2-devel \
        openssl-devel \
        R \
        && \
    dnf clean all && \
    rm -rf /tmp/* /var/cache/dnf/* /var/tmp/*

# Install languageserver package
RUN Rscript -e 'install.packages("languageserver", repos="https://cloud.r-project.org/")'

# Setup entrypoint and cmd
CMD ["R"]
