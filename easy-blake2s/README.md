# easy-blake2s

[![](https://images.microbadger.com/badges/version/badouralix/easy-blake2s.svg)](https://microbadger.com/images/badouralix/easy-blake2s "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/badouralix/easy-blake2s.svg)](https://microbadger.com/images/badouralix/easy-blake2s "Get your own image badge on microbadger.com")

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

All contents licensed under the [WTFPL](https://github.com/badouralix/dockerfiles/blob/master/LICENSE)
