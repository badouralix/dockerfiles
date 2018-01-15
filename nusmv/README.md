NuSMV
=====


[![](https://images.microbadger.com/badges/version/badouralix/nusmv.svg)](https://microbadger.com/images/badouralix/nusmv "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/badouralix/nusmv.svg)](https://microbadger.com/images/badouralix/nusmv "Get your own image badge on microbadger.com")

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
