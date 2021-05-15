# Dockerfiles

This repository contains some Dockerfiles.

See the repo on [Docker Hub](https://hub.docker.com/u/badouralix/).

- [Current dockerfiles](#current-dockerfiles)
- [Usage](#usage)
  - [Build it yourself](#build-it-yourself)
  - [Check out only some subdirectories](#check-out-only-some-subdirectories)
  - [Tips and tricks](#tips-and-tricks)
  - [Create a new image](#create-a-new-image)
- [License](#license)

## Current dockerfiles

- [*curl-http2*](https://hub.docker.com/r/badouralix/curl-http2) - alpine-based docker image for curl with http2 support \
[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/badouralix/curl-http2?label=build&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/curl-http2)
[![Docker Pulls](https://img.shields.io/docker/pulls/badouralix/curl-http2?label=pulls&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/curl-http2)
[![Docker Stars](https://img.shields.io/docker/stars/badouralix/curl-http2?label=stars&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/curl-http2)
[![Docker Image Version (latest by date)](https://img.shields.io/docker/v/badouralix/curl-http2?logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/curl-http2)
[![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/badouralix/curl-http2?label=size&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/curl-http2)

- [*curl-jq*](https://hub.docker.com/r/badouralix/curl-jq) - alpine-based docker image with `curl` and `jq` \
[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/badouralix/curl-jq?label=build&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/curl-jq)
[![Docker Pulls](https://img.shields.io/docker/pulls/badouralix/curl-jq?label=pulls&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/curl-jq)
[![Docker Stars](https://img.shields.io/docker/stars/badouralix/curl-jq?label=stars&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/curl-jq)
[![Docker Image Version (latest by date)](https://img.shields.io/docker/v/badouralix/curl-jq?logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/curl-jq)
[![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/badouralix/curl-jq?label=size&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/curl-jq)

- [*deplacement-covid-19*](https://hub.docker.com/r/badouralix/deplacement-covid-19) - alpine-based docker image serving the official covid-19 générateur d'attestation de déplacement dérogatoire \
[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/badouralix/deplacement-covid-19?label=build&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/deplacement-covid-19)
[![Docker Pulls](https://img.shields.io/docker/pulls/badouralix/deplacement-covid-19?label=pulls&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/deplacement-covid-19)
[![Docker Stars](https://img.shields.io/docker/stars/badouralix/deplacement-covid-19?label=stars&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/deplacement-covid-19)
[![Docker Image Version (latest by date)](https://img.shields.io/docker/v/badouralix/deplacement-covid-19?logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/deplacement-covid-19)
[![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/badouralix/deplacement-covid-19?label=size&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/deplacement-covid-19)

- [*easy-blake2s*](https://hub.docker.com/r/badouralix/easy-blake2s) - alpine-based docker image to compute blake2s hashes \
[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/badouralix/easy-blake2s?label=build&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/easy-blake2s)
[![Docker Pulls](https://img.shields.io/docker/pulls/badouralix/easy-blake2s?label=pulls&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/easy-blake2s)
[![Docker Stars](https://img.shields.io/docker/stars/badouralix/easy-blake2s?label=stars&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/easy-blake2s)
[![Docker Image Version (latest by date)](https://img.shields.io/docker/v/badouralix/easy-blake2s?logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/easy-blake2s)
[![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/badouralix/easy-blake2s?label=size&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/easy-blake2s)

- *lustre* - debian-based docker image for Lustre V4

- [*nusmv*](https://hub.docker.com/r/badouralix/nusmv) - alpine-based docker image with NuSMV and zchaff SAT solver \
[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/badouralix/nusmv?label=build&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/nusmv)
[![Docker Pulls](https://img.shields.io/docker/pulls/badouralix/nusmv?label=pulls&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/nusmv)
[![Docker Stars](https://img.shields.io/docker/stars/badouralix/nusmv?label=stars&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/nusmv)
[![Docker Image Version (latest by date)](https://img.shields.io/docker/v/badouralix/nusmv?logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/nusmv)
[![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/badouralix/nusmv?label=size&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/nusmv)

- [*oh-my-via*](https://hub.docker.com/r/badouralix/oh-my-via) - image for oh-my-via theme testing purpose \
[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/badouralix/oh-my-via?label=build&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/oh-my-via)
[![Docker Pulls](https://img.shields.io/docker/pulls/badouralix/oh-my-via?label=pulls&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/oh-my-via)
[![Docker Stars](https://img.shields.io/docker/stars/badouralix/oh-my-via?label=stars&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/oh-my-via)
[![Docker Image Version (latest by date)](https://img.shields.io/docker/v/badouralix/oh-my-via?logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/oh-my-via)
[![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/badouralix/oh-my-via?label=size&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/oh-my-via)

- [*python-scrapy*](https://hub.docker.com/r/badouralix/python-scrapy) - debian-based docker image for scrapy \
[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/badouralix/python-scrapy?label=build&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/python-scrapy)
[![Docker Pulls](https://img.shields.io/docker/pulls/badouralix/python-scrapy?label=pulls&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/python-scrapy)
[![Docker Stars](https://img.shields.io/docker/stars/badouralix/python-scrapy?label=stars&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/python-scrapy)
[![Docker Image Version (latest by date)](https://img.shields.io/docker/v/badouralix/python-scrapy?logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/python-scrapy)
[![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/badouralix/python-scrapy?label=size&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/python-scrapy)

- [*python-vipaccess*](https://hub.docker.com/r/badouralix/python-vipaccess) - alpine-based docker image for <https://github.com/dlenski/python-vipaccess> \
[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/badouralix/python-vipaccess?label=build&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/python-vipaccess)
[![Docker Pulls](https://img.shields.io/docker/pulls/badouralix/python-vipaccess?label=pulls&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/python-vipaccess)
[![Docker Stars](https://img.shields.io/docker/stars/badouralix/python-vipaccess?label=stars&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/python-vipaccess)
[![Docker Image Version (latest by date)](https://img.shields.io/docker/v/badouralix/python-vipaccess?logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/python-vipaccess)
[![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/badouralix/python-vipaccess?label=size&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/python-vipaccess)

- *r-languageserver* - multi-base docker images with R and R-languageserver

- [*rancher-cli*](https://hub.docker.com/r/badouralix/rancher-cli) - rancher-cli for gitlab-ci \
[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/badouralix/rancher-cli?label=build&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/rancher-cli)
[![Docker Pulls](https://img.shields.io/docker/pulls/badouralix/rancher-cli?label=pulls&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/rancher-cli)
[![Docker Stars](https://img.shields.io/docker/stars/badouralix/rancher-cli?label=stars&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/rancher-cli)
[![Docker Image Version (latest by date)](https://img.shields.io/docker/v/badouralix/rancher-cli?logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/rancher-cli)
[![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/badouralix/rancher-cli?label=size&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/rancher-cli)

- [*toolbox*](https://hub.docker.com/r/badouralix/toolbox) - debian-based image with useful linux tools \
[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/badouralix/toolbox?label=build&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/toolbox)
[![Docker Pulls](https://img.shields.io/docker/pulls/badouralix/toolbox?label=pulls&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/toolbox)
[![Docker Stars](https://img.shields.io/docker/stars/badouralix/toolbox?label=stars&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/toolbox)
[![Docker Image Version (latest by date)](https://img.shields.io/docker/v/badouralix/toolbox?logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/toolbox)
[![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/badouralix/toolbox?label=size&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/toolbox)

- [*zunit*](https://hub.docker.com/r/badouralix/zunit) - alpine-based image for ZUnit, a powerful unit testing framework for ZSH \
[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/badouralix/zunit?label=build&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/zunit)
[![Docker Pulls](https://img.shields.io/docker/pulls/badouralix/zunit?label=pulls&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/zunit)
[![Docker Stars](https://img.shields.io/docker/stars/badouralix/zunit?label=stars&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/zunit)
[![Docker Image Version (latest by date)](https://img.shields.io/docker/v/badouralix/zunit?logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/zunit)
[![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/badouralix/zunit?label=size&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/zunit)

## Usage

### Build it yourself

```bash
git clone https://github.com/badouralix/dockerfiles.git badouralix-dockerfiles
cd badouralix-dockerfiles/<name>/latest
docker build -t $USER-local/<name> .
```

### Check out only some subdirectories

As of git version 1.7, you can check out just a subtree, using `core.sparsecheckout` option.

### Tips and tricks

Give <https://github.com/badouralix/dockerize> a try, for painless and carefree docker build !

### Create a new image

```bash
./bootstrap.sh <name>
```

## License

Unless explicitly stated to the contrary, all contents licensed under the [WTFPL](LICENSE).
