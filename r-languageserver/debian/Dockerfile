FROM debian:latest

# Set non-built-time labels
LABEL org.opencontainers.image.authors="Ayaz BADOURALY"
LABEL org.opencontainers.image.description="Only R with its languageserver"

# Install languageserver dependencies
RUN apt-get update && \
    apt-get install --assume-yes --no-install-recommends \
            build-essential \
            libcurl4-openssl-dev \
            libssl-dev \
            libxml2-dev \
            r-base \
            && \
    rm -rf /var/cache/apt/* /var/lib/apt/lists/* && \
    rm -rf /tmp/* /var/tmp/*

# Install languageserver package
RUN Rscript -e 'install.packages("languageserver", repos="https://cloud.r-project.org/")'

# Setup entrypoint and cmd
CMD ["R"]
