# toolbox

[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/badouralix/toolbox?label=build&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/toolbox)
[![Docker Pulls](https://img.shields.io/docker/pulls/badouralix/toolbox?label=pulls&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/toolbox)
[![Docker Stars](https://img.shields.io/docker/stars/badouralix/toolbox?label=stars&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/toolbox)
[![Docker Image Version (latest by date)](https://img.shields.io/docker/v/badouralix/toolbox?logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/toolbox)
[![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/badouralix/toolbox?label=size&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/toolbox)
[![MicroBadger Layers](https://img.shields.io/microbadger/layers/badouralix/toolbox?logo=docker&logoColor=white)](https://microbadger.com/images/badouralix/toolbox)

This **Dockerfile** builds an image with a bunch of useful tools.

See the repo on [Docker Hub](https://hub.docker.com/r/badouralix/toolbox/).

Embedded tools mostly come from <https://blog.stackpath.com/linux-monitoring-tools>.

## Usage

```bash
docker run -it --rm badouralix/toolbox
```

## Content

This toolbox contains the following deb packages :

```text
build-essential
ca-certificates
curl
dnsutils
fzf
git
htop
less
locate
lsof
man-db
most
mtr-tiny
net-tools
netcat
nmap
parallel
psmisc
pv
python3
ripgrep
socat
ssh
strace
stress
stress-ng
sysstat
tcpdump
tini
tldr
traceroute
vim
zsh
```

## License

All contents licensed under the [WTFPL](https://github.com/badouralix/dockerfiles/blob/master/LICENSE)
