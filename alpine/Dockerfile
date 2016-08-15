FROM alpine:3.4
MAINTAINER Ayaz BADOURALY <ayaz.badouraly@via.ecp.fr>

# Install useful packages, building tools and libraries
RUN apk add --update --no-cache \
		ca-certificates openssl && \
	apk add --update --no-cache --virtual build-dependencies \
		autoconf automake binutils g++ libtool make pkgconfig tar \
		openssl-dev

# Build nghttp2 libraries from source
ARG NGHTTP2_RELEASE
ENV NGHTTP2_RELEASE ${NGHTTP2_RELEASE:-v1.13.0}

RUN mkdir -p /usr/local/src/nghttp2 && \
	wget -qO- https://github.com/nghttp2/nghttp2/archive/${NGHTTP2_RELEASE}.tar.gz | \
		tar -xzf - --directory=/usr/local/src/nghttp2 --strip-components=1 && \
	cd /usr/local/src/nghttp2 && \
	autoreconf -i && automake && autoconf && \
	./configure && \
	make && make install

# Build curl from source
ARG CURL_RELEASE
ENV CURL_RELEASE ${CURL_RELEASE:-curl-7_50_1}

RUN mkdir -p /usr/local/src/curl && \
	wget -qO- https://github.com/curl/curl/archive/${CURL_RELEASE}.tar.gz  | \
		tar -xzf - --directory=/usr/local/src/curl --strip-components=1 && \
	cd /usr/local/src/curl && \
	./buildconf  && \
	./configure --enable-ipv6 --enable-threaded-resolver \
		--with-nghttp2=/usr/local --with-ssl && \
	make && make install

# Clean image
RUN apk del build-dependencies && \
	rm -rf /usr/local/src/* /var/cache/apk/*

# Setup entrypoint and cmd
COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["curl", "--http2"]

