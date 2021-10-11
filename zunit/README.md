# zunit

[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/badouralix/zunit?label=build&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/zunit)
[![Docker Pulls](https://img.shields.io/docker/pulls/badouralix/zunit?label=pulls&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/zunit)
[![Docker Stars](https://img.shields.io/docker/stars/badouralix/zunit?label=stars&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/zunit)
[![Docker Image Version (latest by date)](https://img.shields.io/docker/v/badouralix/zunit?logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/zunit)
[![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/badouralix/zunit?label=size&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/zunit)

⚠️⚠️⚠️  **ZUnit is still in progress, this image is built upon branch `master`.** ⚠️⚠️⚠️

⚠️⚠️⚠️            **Images built on specific releases may arrive soon**           ⚠️⚠️⚠️

This **Dockerfile** builds an image with zsh and [zunit framework](https://github.com/molovo/zunit).

See the repo on [Docker Hub](https://hub.docker.com/r/badouralix/zunit/).

## Usage

Default workdir is `/app`.
Thus, assuming you are currently in your project directory:

```bash
docker run -t --rm -v $PWD:/app:ro badouralix/zunit
```

See [README](https://github.com/molovo/zunit/blob/master/README.md) to learn how to use `zunit`.

## Tips and tricks

In your shell rc dotfile, you could add an `alias zunit='docker run -t --rm -v $PWD:/app:ro badouralix/zunit'`
so that you would just have to run :

```bash
zunit
```

## License

Unless explicitly stated to the contrary, all contents licensed under the [WTFPL](https://github.com/badouralix/dockerfiles/blob/main/LICENSE).
