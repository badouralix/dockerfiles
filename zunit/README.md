# zunit

[![](https://images.microbadger.com/badges/version/badouralix/zunit.svg)](https://microbadger.com/images/badouralix/zunit "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/badouralix/zunit.svg)](https://microbadger.com/images/badouralix/zunit "Get your own image badge on microbadger.com")

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

Unless explicitly stated to the contrary, all contents licensed under the [WTFPL](https://github.com/badouralix/dockerfiles/blob/master/LICENSE).
