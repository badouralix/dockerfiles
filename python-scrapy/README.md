# python-scrapy

[![Docker Pulls](https://img.shields.io/docker/pulls/badouralix/python-scrapy?label=pulls&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/python-scrapy)
[![Docker Stars](https://img.shields.io/docker/stars/badouralix/python-scrapy?label=stars&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/python-scrapy)
[![Docker Image Version (latest by date)](https://img.shields.io/docker/v/badouralix/python-scrapy?logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/python-scrapy)
[![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/badouralix/python-scrapy?label=size&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/python-scrapy)

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

Unless expressly stated otherwise, all contents licensed under the [MIT License](https://github.com/badouralix/dockerfiles/blob/main/LICENSE).
