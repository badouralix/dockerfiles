python-scrapy
=============

[![](https://images.microbadger.com/badges/version/badouralix/python-scrapy.svg)](https://microbadger.com/images/badouralix/python-scrapy "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/badouralix/python-scrapy.svg)](https://microbadger.com/images/badouralix/python-scrapy "Get your own image badge on microbadger.com")

This repository contains a **Dockerfile** for [Scrapy](http://scrapy.org/).

See the repo on [Docker Hub](https://hub.docker.com/r/badouralix/python-scrapy/).

## Installation

1. Install [Docker](https://www.docker.com/).
2. After cloning, build an image from the Dockerfile : `docker build -t $USER-local/python-scrapy .`

## Usage

```bash
docker run -it --rm badouralix/python-scrapy
```

## Tags

- `latest` : image based on `debian:buster`

## License

All contents licensed under the [WTFPL](../LICENSE)
