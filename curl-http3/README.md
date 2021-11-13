# curl-http3

[![Docker Pulls](https://img.shields.io/docker/pulls/badouralix/curl-http3?label=pulls&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/curl-http3)
[![Docker Stars](https://img.shields.io/docker/stars/badouralix/curl-http3?label=stars&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/curl-http3)
[![Docker Image Version (latest by date)](https://img.shields.io/docker/v/badouralix/curl-http3?logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/curl-http3)
[![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/badouralix/curl-http3?label=size&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/curl-http3)

This repository contains a **Dockerfile** for [curl](https://curl.haxx.se/) with http3 support ([ngtcp2+openssl](https://github.com/curl/curl/blob/ca847ba/docs/HTTP3.md#build-with-openssl)).

See the repo on [Docker Hub](https://hub.docker.com/r/badouralix/curl-http3/).

## Usage

```bash
$ docker run -t --rm badouralix/curl-http3 -I https://nghttp2.org:4433/

HTTP/3 200
server: nghttp3/ngtcp2 server
content-type: text/html
content-length: 6616
```

## Tips and tricks

In your shell rc dotfile, you could add an `alias 'curl-http3'='docker run -t --rm badouralix/curl-http3'` so that you would just have to run :

```bash
curl-http3 https://nghttp2.org:4433/
```

## Versions, protocols and features

:warning: this may change as the latest base image changes

### Debian

```bash
curl 7.80.1-DEV (x86_64-pc-linux-gnu) libcurl/7.80.1-DEV OpenSSL/3.0.0 ngtcp2/0.1.0-DEV nghttp3/0.1.0-DEV
Release-Date: [unreleased]
Protocols: dict file ftp ftps gopher gophers http https imap imaps mqtt pop3 pop3s rtsp smb smbs smtp smtps telnet tftp
Features: alt-svc AsynchDNS HSTS HTTP3 HTTPS-proxy IPv6 Largefile NTLM NTLM_WB SSL TLS-SRP UnixSockets
```

## License

Unless expressly stated otherwise, all contents licensed under the [MIT License](https://github.com/badouralix/dockerfiles/blob/main/LICENSE).
