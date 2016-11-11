FROM debian:jessie
MAINTAINER Ayaz BADOURALY <ayaz.badouraly@via.ecp.fr>

# Install useful packages, building tools and libraries
RUN apt-get update && \
	apt-get install --assume-yes --no-install-recommends \
		ca-certificates openssl wget groff-base \
		autoconf automake binutils g++ libtool make pkg-config \
		libssl-dev libssh2-1-dev zlib1g-dev libgss-dev libidn11-dev \
			libldap-dev librtmp-dev libpsl-dev && \
	apt-get clean && \
	rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Build nghttp2 libraries from source
ARG NGHTTP2_RELEASE
ENV NGHTTP2_RELEASE ${NGHTTP2_RELEASE:-v1.16.0}

RUN mkdir -p /usr/local/src/nghttp2 && \
	wget -qO- https://github.com/nghttp2/nghttp2/archive/${NGHTTP2_RELEASE}.tar.gz | \
		tar -xzf - --directory=/usr/local/src/nghttp2 --strip-components=1 && \
	cd /usr/local/src/nghttp2 && \
	autoreconf -i && automake && autoconf && \
	./configure --disable-failmalloc && \
	make && make install && \
	ldconfig

# Build curl from source
ARG CURL_RELEASE
ENV CURL_RELEASE ${CURL_RELEASE:-curl-7.51.0}

RUN mkdir -p /usr/local/src/curl && \
	wget -qO- https://curl.haxx.se/download/${CURL_RELEASE}.tar.gz | \
		tar -xzf - --directory=/usr/local/src/curl --strip-components=1 && \
	cd /usr/local/src/curl && \
	./buildconf && \
	./configure --enable-ipv6 --enable-threaded-resolver \
		--with-ssl --with-nghttp2=/usr/local --with-gssapi && \
	make && make install && \
	ldconfig

# Clean image
RUN apt-get autoremove --purge --assume-yes \
		autoconf automake binutils g++ groff-base libtool make wget && \
	rm -rf /usr/local/src/*

# Setup entrypoint and cmd
COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["curl", "--http2"]

