# NuSMV

[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/badouralix/nusmv?label=build&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/nusmv)
[![Docker Pulls](https://img.shields.io/docker/pulls/badouralix/nusmv?label=pulls&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/nusmv)
[![Docker Stars](https://img.shields.io/docker/stars/badouralix/nusmv?label=stars&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/nusmv)
[![Docker Image Version (latest by date)](https://img.shields.io/docker/v/badouralix/nusmv?logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/nusmv)
[![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/badouralix/nusmv?label=size&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/nusmv)
[![MicroBadger Layers](https://img.shields.io/microbadger/layers/badouralix/nusmv?logo=docker&logoColor=white)](https://microbadger.com/images/badouralix/nusmv)

This **Dockerfile** builds an image with [NuSMV](http://nusmv.fbk.eu/), a
symbolic model checker, with the zchaff SAT solver.

See the repo on [Docker Hub](https://hub.docker.com/r/badouralix/nusmv/).

## Usage

Default workdir is `/input`. Thus, assuming you are currently in your project
directory:

```bash
docker run -it --rm -v $PWD:/input:ro badouralix/nusmv <file>
```

See [manual](http://nusmv.fbk.eu/NuSMV/userman/v26/nusmv.pdf) to learn how to
use `nusmv`.

## Tips and tricks

In your shell rc dotfile, you could add an
`alias nusmv='docker run -it --rm -v $PWD:/input:ro badouralix/nusmv'` so that
you would just have to run :

```bash
nusmv <file>
```

## License

Unless explicitly stated to the contrary, all contents licensed under the
[WTFPL](https://github.com/badouralix/dockerfiles/blob/master/LICENSE).
