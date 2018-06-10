# rancher-cli

[![version/badouralix/rancher-cli](https://images.microbadger.com/badges/version/badouralix/rancher-cli.svg)](https://microbadger.com/images/badouralix/rancher-cli "Get your own version badge on microbadger.com") [![image/badouralix/rancher-cli](https://images.microbadger.com/badges/image/badouralix/rancher-cli.svg)](https://microbadger.com/images/badouralix/rancher-cli "Get your own image badge on microbadger.com")

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

All contents licensed under the [WTFPL](https://github.com/badouralix/dockerfiles/blob/master/LICENSE)
