FROM python:alpine

# Set non-built-time labels
LABEL org.opencontainers.image.authors="Ayaz BADOURALY"
LABEL org.opencontainers.image.description="One-liner for https://github.com/dlenski/python-vipaccess"

# Install utils
RUN apk add --no-cache libqrencode oath-toolkit-oathtool tini

# Install python-vipaccess
RUN apk add --no-cache --virtual build-dependencies gcc musl-dev && \
    python -m pip install --no-cache-dir --upgrade https://github.com/dlenski/python-vipaccess/archive/HEAD.zip && \
    apk del build-dependencies

# Copy cmd script
COPY vipaccess-wrapper.sh /

# Setup entrypoint and cmd
ENTRYPOINT [ "tini", "--" ]
CMD [ "/vipaccess-wrapper.sh" ]
