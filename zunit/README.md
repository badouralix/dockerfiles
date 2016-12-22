zunit
=====

This **Dockerfile** builds an image with zsh and [zunit framework](https://github.com/molovo/zunit).

⚠️ **ZUnit is still in progress, this image is built upon branch `version-0.3.x`.**

## Usage

Default workdir is `/app`.
Thus, assuming you are currently in your project directory:

`docker run -it --rm -v $PWD:/app:ro badouralix/zunit`

## License

Unless explicitly stated to the contrary, all contents licensed under the [WTFPL](https://github.com/badouralix/dockerfiles/blob/master/LICENSE).

