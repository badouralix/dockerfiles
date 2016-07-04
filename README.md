docker-scrapy
=============


This repository contains **Dockerfile** of [Scrapy](http://scrapy.org/).


## Base Docker Image

This image is based on debian:stretch.


## Installation

1. Install [Docker](https://www.docker.com/).
2. After cloning, build an image from the Dockerfile : `docker build -t $USER/scrapy .`


## Usage

```
docker run -it --rm $USER/scrapy
```

