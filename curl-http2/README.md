# curl-http2

[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/badouralix/curl-http2?label=build&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/curl-http2)
[![Docker Pulls](https://img.shields.io/docker/pulls/badouralix/curl-http2?label=pulls&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/curl-http2)
[![Docker Stars](https://img.shields.io/docker/stars/badouralix/curl-http2?label=stars&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/curl-http2)
[![Docker Image Version (latest by date)](https://img.shields.io/docker/v/badouralix/curl-http2?logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/curl-http2)
[![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/badouralix/curl-http2?label=size&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/curl-http2)

This repository contains a **Dockerfile** for [curl](https://curl.haxx.se/) with http2 support.

See the repo on [Docker Hub](https://hub.docker.com/r/badouralix/curl-http2/).

## Installation

### Automated build

```bash
$ docker pull badouralix/curl-http2
```

### Self build

```bash
$ git clone https://github.com/badouralix/dockerfiles.git
$ cd dockerfiles/curl-http2/<BASE_IMAGE>
$ docker build -t $USER-local/curl-http2:<BASE_IMAGE> .
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
$ curl-http2 -I https://nghttp2.org/
```

## Tags

All images are using the distribution `curl` package.

- `latest`, `alpine` : image based on `alpine:latest`
- `debian` : image based on `debian:latest`

## Versions, protocols and features

:warning: this may change as the latest base image changes

### Alpine

```bash
curl 7.66.0 (x86_64-alpine-linux-musl) libcurl/7.66.0 OpenSSL/1.1.1d zlib/1.2.11 nghttp2/1.39.2
Release-Date: 2019-09-11
Protocols: dict file ftp ftps gopher http https imap imaps pop3 pop3s rtsp smb smbs smtp smtps telnet tftp
Features: AsynchDNS HTTP2 HTTPS-proxy IPv6 Largefile libz NTLM NTLM_WB SSL TLS-SRP UnixSockets
```

### Debian

```bash
curl 7.64.0 (x86_64-pc-linux-gnu) libcurl/7.64.0 OpenSSL/1.1.1d zlib/1.2.11 libidn2/2.0.5 libpsl/0.20.2 (+libidn2/2.0.5) libssh2/1.8.0 nghttp2/1.36.0 librtmp/2.3
Release-Date: 2019-02-06
Protocols: dict file ftp ftps gopher http https imap imaps ldap ldaps pop3 pop3s rtmp rtsp scp sftp smb smbs smtp smtps telnet tftp
Features: AsynchDNS IDN IPv6 Largefile GSS-API Kerberos SPNEGO NTLM NTLM_WB SSL libz TLS-SRP HTTP2 UnixSockets HTTPS-proxy PSL
```

## License

Unless expressly stated otherwise, all contents licensed under the [MIT License](https://github.com/badouralix/dockerfiles/blob/main/LICENSE).
