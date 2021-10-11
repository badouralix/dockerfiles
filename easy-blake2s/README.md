# easy-blake2s

[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/badouralix/easy-blake2s?label=build&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/easy-blake2s)
[![Docker Pulls](https://img.shields.io/docker/pulls/badouralix/easy-blake2s?label=pulls&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/easy-blake2s)
[![Docker Stars](https://img.shields.io/docker/stars/badouralix/easy-blake2s?label=stars&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/easy-blake2s)
[![Docker Image Version (latest by date)](https://img.shields.io/docker/v/badouralix/easy-blake2s?logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/easy-blake2s)
[![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/badouralix/easy-blake2s?label=size&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/easy-blake2s)

This **Dockerfile** computes the BLAKE2s hash of an input secret.

See the repo on [Docker Hub](https://hub.docker.com/r/badouralix/easy-blake2s/).

## Usage

```bash
$ docker run --rm badouralix/easy-blake2s "Hello, world!"
30d8777f0e178582ec8cd2fcdc18af57c828ee2f89e978df52c8e7af078bd5cf
```

## Documentation

- <https://blake2.net/>
- <https://docs.python.org/3/library/hashlib.html#hash-algorithms>

## License

All contents licensed under the [WTFPL](https://github.com/badouralix/dockerfiles/blob/main/LICENSE)
