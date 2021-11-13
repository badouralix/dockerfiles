# curl-http2

[![Docker Pulls](https://img.shields.io/docker/pulls/badouralix/curl-http2?label=pulls&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/curl-http2)
[![Docker Stars](https://img.shields.io/docker/stars/badouralix/curl-http2?label=stars&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/curl-http2)
[![Docker Image Version (latest by date)](https://img.shields.io/docker/v/badouralix/curl-http2?logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/curl-http2)
[![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/badouralix/curl-http2?label=size&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/curl-http2)

This repository contains a **Dockerfile** for [curl](https://curl.haxx.se/) with http2 support.

See the repo on [Docker Hub](https://hub.docker.com/r/badouralix/curl-http2/).

## Installation

### Automated build

```bash
docker pull badouralix/curl-http2
```

### Self build

```bash
BASE_IMAGE=latest
git clone https://github.com/badouralix/dockerfiles.git
cd dockerfiles/curl-http2/$BASE_IMAGE
docker build -t $USER-local/curl-http2:$BASE_IMAGE .
```

## Usage

```bash
$ docker run -t --rm badouralix/curl-http2 -I https://nghttp2.org/

HTTP/2 200
date: Wed, 12 Apr 2017 00:26:57 GMT
content-type: text/html
last-modified: Sun, 09 Apr 2017 13:25:12 GMT
etag: "58ea3638-19ff"
accept-ranges: bytes
content-length: 6655
x-backend-header-rtt: 0.001404
strict-transport-security: max-age=31536000
server: nghttpx
via: 2 nghttpx
x-frame-options: SAMEORIGIN
x-xss-protection: 1; mode=block
x-content-type-options: nosniff
```

## Tips and tricks

In your shell rc dotfile, you could add an `alias 'curl-http2'='docker run -t --rm badouralix/curl-http2'`
so that you would just have to run :

```bash
curl-http2 https://nghttp2.org/
```

## Tags

All images are using the distribution `curl` package.

- `latest`, `alpine` : image based on `alpine:latest`
- `debian` : image based on `debian:latest`

## Versions, protocols and features

:warning: this may change as the latest base image changes

### Alpine

```bash
curl 7.79.1 (x86_64-alpine-linux-musl) libcurl/7.79.1 OpenSSL/1.1.1l zlib/1.2.11 brotli/1.0.9 nghttp2/1.43.0
Release-Date: 2021-09-22
Protocols: dict file ftp ftps gopher gophers http https imap imaps mqtt pop3 pop3s rtsp smb smbs smtp smtps telnet tftp
Features: alt-svc AsynchDNS brotli HSTS HTTP2 HTTPS-proxy IPv6 Largefile libz NTLM NTLM_WB SSL TLS-SRP UnixSockets
```

### Debian

```bash
curl 7.74.0 (x86_64-pc-linux-gnu) libcurl/7.74.0 OpenSSL/1.1.1k zlib/1.2.11 brotli/1.0.9 libidn2/2.3.0 libpsl/0.21.0 (+libidn2/2.3.0) libssh2/1.9.0 nghttp2/1.43.0 librtmp/2.3
Release-Date: 2020-12-09
Protocols: dict file ftp ftps gopher http https imap imaps ldap ldaps mqtt pop3 pop3s rtmp rtsp scp sftp smb smbs smtp smtps telnet tftp
Features: alt-svc AsynchDNS brotli GSS-API HTTP2 HTTPS-proxy IDN IPv6 Kerberos Largefile libz NTLM NTLM_WB PSL SPNEGO SSL TLS-SRP UnixSockets
```

## License

Unless expressly stated otherwise, all contents licensed under the [MIT License](https://github.com/badouralix/dockerfiles/blob/main/LICENSE).
