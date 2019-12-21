FROM python:alpine

LABEL org.opencontainers.image.authors="Ayaz BADOURALY" \
      org.opencontainers.image.description="Simple and easy-to-use BLAKE2s calculator"

COPY easy-blake2s.py /usr/local/bin/easy-blake2s
COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
