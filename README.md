docker-curl-http2
=================

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

All images are built with [`nghttp2 v1.13.0`](https://github.com/nghttp2/nghttp2/releases/tag/v1.13.0) and [`curl 7.50.1`](https://github.com/curl/curl/releases/tag/curl-7_50_1).

 - `latest`, `alpine` : image based on `alpine:3.4`
 - `debian` : image based on `debian:jessie`


## License

All contents licensed under the [WTFPL](LICENSE)

