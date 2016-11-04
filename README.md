docker-curl-http2
=================

[![](https://images.microbadger.com/badges/version/badouralix/curl-http2.svg)](https://microbadger.com/images/badouralix/curl-http2 "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/badouralix/curl-http2.svg)](https://microbadger.com/images/badouralix/curl-http2 "Get your own image badge on microbadger.com")

This repository contains a **Dockerfile** for [curl](https://curl.haxx.se/) with http2 support.

See the repo on [Docker Hub](https://hub.docker.com/r/badouralix/curl-http2/).


## Installation

```
$ git clone https://github.com/badouralix/docker-curl-http2.git
$ cd docker-curl-http2/<BASE_IMAGE>
$ docker build -t $USER-local/curl-http2 .
```


## Usage

```
$ docker run -t --rm badouralix/curl-http2 -I https://nghttp2.org/

HTTP/2 200
date: Mon, 15 Aug 2016 23:28:22 GMT
content-type: text/html
last-modified: Thu, 21 Jul 2016 14:06:56 GMT
etag: "5790d700-19e1"
accept-ranges: bytes
content-length: 6625
x-backend-header-rtt: 0.002506
strict-transport-security: max-age=31536000
server: nghttpx nghttp2/1.14.0-DEV
via: 2 nghttpx
x-frame-options: SAMEORIGIN
x-xss-protection: 1; mode=block
x-content-type-options: nosniff
```


## Tips and tricks

In your shell rc dotfile, you could add an `alias 'curl-http2'='docker run -t --rm badouralix/curl-http2'`
so that you would just have to run :

```
$ curl-http2 -I https://nghttp2.org/
```


## Tags

All images are built with [`nghttp2 v1.16.0`](https://github.com/nghttp2/nghttp2/releases/tag/v1.16.0) and [`curl 7.51.0`](https://github.com/curl/curl/releases/tag/curl-7_51.0).

 - `latest`, `alpine` : image based on `alpine:3.4`
 - `debian` : image based on `debian:jessie`


## Versions, protocols and features

### Alpine

```
curl 7.50.3 (x86_64-unknown-linux-gnu) libcurl/7.50.3 OpenSSL/1.0.2j zlib/1.2.8 nghttp2/1.15.0
Protocols: dict file ftp ftps gopher http https imap imaps pop3 pop3s rtsp smb smbs smtp smtps telnet tftp
Features: AsynchDNS IPv6 Largefile NTLM NTLM_WB SSL libz TLS-SRP HTTP2 UnixSockets
```

### Debian

```
curl 7.50.3 (x86_64-unknown-linux-gnu) libcurl/7.50.3 OpenSSL/1.0.1t zlib/1.2.8 libidn/1.29 libpsl/0.5.1 (+libicu/52.1) libssh2/1.4.3 nghttp2/1.15.0 librtmp/2.3
Protocols: dict file ftp ftps gopher http https imap imaps ldap ldaps pop3 pop3s rtmp rtsp scp sftp smb smbs smtp smtps telnet tftp
Features: AsynchDNS IDN IPv6 Largefile GSS-API Kerberos SPNEGO NTLM NTLM_WB SSL libz TLS-SRP HTTP2 UnixSockets PSL
```


## License

All contents licensed under the [WTFPL](LICENSE)

