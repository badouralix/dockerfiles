docker-curl-http2
=================

This repository contains a **Dockerfile** for [curl](https://curl.haxx.se/) with http2 support.

See the repo on [Docker Hub](https://hub.docker.com/r/badouralix/curl-http2/).


## Installation

```
$ git clone https://github.com/badouralix/docker-curl-http2.git
$ cd docker-curl-http2
$ docker build -t badouralix/curl-http2 .
```


## Usage

```
$ docker run -t --rm badouralix/curl-http2 -I https://nghttp2.org/
```


## Tips and tricks

In your shell rc dotfile, you could add an `alias 'curl-http2'='docker run -t --rm badouralix/curl-http2'`
so that you would just have to run :

```
$ curl-http2 -I https://nghttp2.org/
```


## Tags

 - `badouralix/curl-http2:latest` : built with `nghttp2-v1.13.0` and `curl-7.50.1`, based on `debian:jessie`


## License

All contents licensed under the [WTFPL](LICENSE)

