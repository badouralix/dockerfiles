FROM debian:latest

# Set non-built-time labels
LABEL org.opencontainers.image.authors="Ayaz BADOURALY" \
      org.opencontainers.image.description="Only R with its languageserver"

# Install languageserver dependencies
RUN apt update && \
	apt install --assume-yes --no-install-recommends \
		build-essential \
		libcurl4-openssl-dev \
		libssl-dev \
		libxml2-dev \
		r-base && \
	apt clean && \
	rm -rf /tmp/* /var/cache/apt/archives/* /var/lib/apt/lists/* /var/tmp/*

# Install languageserver package
RUN Rscript -e 'install.packages("languageserver", repos="https://cloud.r-project.org/")'

# Setup entrypoint and cmd
CMD ["R"]
