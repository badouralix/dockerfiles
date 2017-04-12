rancher-cli
===========

This **Dockerfile** builds a docker image based on [rancher/cli](https://hub.docker.com/r/rancher/cli/), with an overridden
`ENTRYPOINT` to handle custom `CMD`s. Useful when using, for instance,
[gitlab-ci](https://docs.gitlab.com/ce/ci/docker/using_docker_images.html#how-docker-integration-works), or any other CI/CD tool
providing job scripts to be run inside the container.

See the repo on [Docker Hub](https://hub.docker.com/r/badouralix/rancher-cli/).


## Usage

Assuming envvars `RANCHER_URL`, `RANCHER_ACCESS_KEY` and `RANCHER_SECRET_KEY` are set:

```
docker run --rm -e RANCHER_URL=$RANCHER_URL -e RANCHER_ACCESS_KEY=$RANCHER_ACCESS_KEY -e RANCHER_SECRET_KEY=$RANCHER_SECRET_KEY badouralix/rancher-cli rancher ps
```

If rancher command is not an alpine command, `rancher` can be omitted within the previous command.


## Warning

This image is known to be buggy with several built-in commands such as `help`...


## License

All contents licensed under the [WTFPL](https://github.com/badouralix/dockerfiles/blob/master/LICENSE)

