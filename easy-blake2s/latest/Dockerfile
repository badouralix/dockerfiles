FROM python:alpine

# Set non-built-time labels
LABEL org.opencontainers.image.authors="Ayaz BADOURALY"
LABEL org.opencontainers.image.description="Simple and easy-to-use BLAKE2s calculator"

# Copy code over
COPY easy-blake2s.py /usr/local/bin/easy-blake2s
COPY entrypoint.sh /

# Setup entrypoint and cmd
ENTRYPOINT [ "/entrypoint.sh" ]
