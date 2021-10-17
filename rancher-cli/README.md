# rancher-cli

[![Docker Pulls](https://img.shields.io/docker/pulls/badouralix/rancher-cli?label=pulls&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/rancher-cli)
[![Docker Stars](https://img.shields.io/docker/stars/badouralix/rancher-cli?label=stars&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/rancher-cli)
[![Docker Image Version (latest by date)](https://img.shields.io/docker/v/badouralix/rancher-cli?logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/rancher-cli)
[![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/badouralix/rancher-cli?label=size&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/rancher-cli)

This **Dockerfile** builds a docker image based on [rancher/cli](https://hub.docker.com/r/rancher/cli/), with an overridden
`ENTRYPOINT` to handle custom `CMD`s. Useful when using, for instance,
[gitlab-ci](https://docs.gitlab.com/ce/ci/docker/using_docker_images.html#how-docker-integration-works), or any other CI/CD tool
providing job scripts to be run inside the container.

See the repo on [Docker Hub](https://hub.docker.com/r/badouralix/rancher-cli/).

## Usage

### CLI usage

Assuming envvars `RANCHER_URL`, `RANCHER_ACCESS_KEY` and `RANCHER_SECRET_KEY` are set:

```bash
docker run --rm -e RANCHER_URL=$RANCHER_URL -e RANCHER_ACCESS_KEY=$RANCHER_ACCESS_KEY -e RANCHER_SECRET_KEY=$RANCHER_SECRET_KEY badouralix/rancher-cli rancher ps
```

If rancher command is not an alpine command, `rancher` can be omitted within the previous command.

### GitLab-CI

Assuming secret variables `RANCHER_URL`, `RANCHER_ACCESS_KEY` and `RANCHER_SECRET_KEY` are set in your CI/CD pipelines settings,
image can be use as follow, to restart a service for instance:

```yaml
image: badouralix/rancher-cli
script:
  - rancher --wait restart stack/service
```

## Warning

When using it in command line, this image is known to be buggy with several built-in commands such as `help`... The safest way to
use this image is to always append `rancher` before any rancher-cli command, thus to prevent any error.

## License

Unless expressly stated otherwise, all contents licensed under the [MIT License](https://github.com/badouralix/dockerfiles/blob/main/LICENSE).
