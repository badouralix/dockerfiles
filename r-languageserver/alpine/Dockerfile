FROM alpine:latest

# Set non-built-time labels
LABEL org.opencontainers.image.authors="Ayaz BADOURALY"
LABEL org.opencontainers.image.description="Only R with its languageserver"

# Install languageserver dependencies
RUN apk add --no-cache \
        curl-dev \
        g++ \
        gcc \
        libxml2-dev \
        linux-headers \
        make \
        R \
        R-dev \
        R-doc

# Install languageserver package
RUN Rscript -e 'install.packages("languageserver", repos="https://cloud.r-project.org/")'

# Setup entrypoint and cmd
CMD ["R"]
