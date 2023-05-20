# toolbox

[![Docker Pulls](https://img.shields.io/docker/pulls/badouralix/toolbox?label=pulls&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/toolbox)
[![Docker Stars](https://img.shields.io/docker/stars/badouralix/toolbox?label=stars&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/toolbox)
[![Docker Image Version (latest by date)](https://img.shields.io/docker/v/badouralix/toolbox?logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/toolbox)
[![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/badouralix/toolbox?label=size&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/toolbox)

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
apt-file
build-essential
ca-certificates
colordiff
conntrack
curl
dnsutils
fzf
git
gnupg
htop
iperf3
iproute2
iptables
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
tree
vim
wget
zsh
```

## License

Unless expressly stated otherwise, all contents licensed under the [MIT License](https://github.com/badouralix/dockerfiles/blob/main/LICENSE).
