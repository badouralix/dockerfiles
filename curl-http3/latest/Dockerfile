FROM debian:latest

# Set non-built-time labels
LABEL org.opencontainers.image.authors="Ayaz BADOURALY"
LABEL org.opencontainers.image.description="Docker image for curl with http3 support (ngtcp2+openssl)"

# Install build dependecies
RUN apt-get update && \
    apt-get install --assume-yes --no-install-recommends ca-certificates dh-autoreconf gcc git make pkg-config

# Build quictls/openssl from source
RUN git clone --depth 1 -b openssl-3.0.0+quic https://github.com/quictls/openssl && \
    cd openssl && \
    ./config enable-tls1_3 --prefix=/usr/local && \
    make && \
    make install

# Build nghttp3 from source
RUN cd .. && \
    git clone https://github.com/ngtcp2/nghttp3 && \
    cd nghttp3 && \
    autoreconf -fi && \
    ./configure --prefix=/usr/local --enable-lib-only && \
    make && \
    make install

# Build ngtcp2 from source
RUN cd .. && \
    git clone https://github.com/ngtcp2/ngtcp2 && \
    cd ngtcp2 && \
    autoreconf -fi && \
    ./configure PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/usr/local/lib64/pkgconfig LDFLAGS="-Wl,-rpath,/usr/local/lib64" --prefix=/usr/local --enable-lib-only && \
    make && \
    make install

# Build curl from source
RUN cd .. && \
    git clone https://github.com/curl/curl && \
    cd curl && \
    autoreconf -fi && \
    LDFLAGS="-Wl,-rpath,/usr/local/lib64" ./configure --with-openssl=/usr/local --with-nghttp3=/usr/local --with-ngtcp2=/usr/local && \
    make && \
    make install

# Update shared library cache
RUN ldconfig

# Setup entrypoint and cmd
COPY entrypoint.sh /

ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "curl", "--http3" ]
