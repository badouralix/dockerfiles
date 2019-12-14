# badouralix/dockerfiles

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

- [curl-http2](https://hub.docker.com/r/badouralix/curl-http2/) : alpine-based docker image for curl with http2 support
[![](https://images.microbadger.com/badges/version/badouralix/curl-http2.svg)](https://microbadger.com/images/badouralix/curl-http2 "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/badouralix/curl-http2.svg)](https://microbadger.com/images/badouralix/curl-http2 "Get your own image badge on microbadger.com")

- lustre : debian-based docker image for Lustre V4

- [nusmv](https://hub.docker.com/r/badouralix/curl-http2/) : alpine-based Docker image with NuSMV and zchaff SAT solver
[![](https://images.microbadger.com/badges/version/badouralix/nusmv.svg)](https://microbadger.com/images/badouralix/nusmv "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/badouralix/nusmv.svg)](https://microbadger.com/images/badouralix/nusmv "Get your own image badge on microbadger.com")

- [oh-my-via](https://hub.docker.com/r/badouralix/oh-my-via/) : image for oh-my-via theme testing purpose
[![](https://images.microbadger.com/badges/version/badouralix/oh-my-via.svg)](https://microbadger.com/images/badouralix/oh-my-via "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/badouralix/oh-my-via.svg)](https://microbadger.com/images/badouralix/oh-my-via "Get your own image badge on microbadger.com")

- [python-scrapy](https://hub.docker.com/r/badouralix/python-scrapy/) : debian-based docker image for scrapy
[![](https://images.microbadger.com/badges/version/badouralix/python-scrapy.svg)](https://microbadger.com/images/badouralix/python-scrapy "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/badouralix/python-scrapy.svg)](https://microbadger.com/images/badouralix/python-scrapy "Get your own image badge on microbadger.com")

- [rancher-cli](https://hub.docker.com/r/badouralix/rancher-cli/) : rancher-cli for gitlab-ci
[![](https://images.microbadger.com/badges/version/badouralix/rancher-cli.svg)](https://microbadger.com/images/badouralix/rancher-cli "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/badouralix/rancher-cli.svg)](https://microbadger.com/images/badouralix/rancher-cli "Get your own image badge on microbadger.com")

- [toolbox](https://hub.docker.com/r/badouralix/toolbox/) : debian-based image with useful linux tools
[![](https://images.microbadger.com/badges/version/badouralix/toolbox.svg)](https://microbadger.com/images/badouralix/toolbox "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/badouralix/toolbox.svg)](https://microbadger.com/images/badouralix/toolbox "Get your own image badge on microbadger.com")

- [zunit](https://hub.docker.com/r/badouralix/zunit/) : alpine-based image for ZUnit, a powerful unit testing framework for ZSH
[![](https://images.microbadger.com/badges/version/badouralix/zunit.svg)](https://microbadger.com/images/badouralix/zunit "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/badouralix/zunit.svg)](https://microbadger.com/images/badouralix/zunit "Get your own image badge on microbadger.com")

## Usage

### Build it yourself

```bash
git clone https://github.com/badouralix/dockerfiles.git badouralix-dockerfiles
cd badouralix-dockerfiles/<image_name>
docker build -t $USER-local/<image_name> .
```

### Check out only some subdirectories

As of git version 1.7, you can check out just a subtree, using `core.sparsecheckout` option.

### Tips and tricks

Give <https://github.com/badouralix/dockerize> a try, for painless and carefree docker build !

### Create a new image

```bash
./bootstrap.sh <image_name>
```

## License

Unless explicitly stated to the contrary, all contents licensed under the [WTFPL](LICENSE).
