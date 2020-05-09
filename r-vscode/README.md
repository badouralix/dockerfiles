# r-vscode

[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/badouralix/r-vscode?label=build&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/r-vscode)
[![Docker Pulls](https://img.shields.io/docker/pulls/badouralix/r-vscode?label=pulls&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/r-vscode)
[![Docker Stars](https://img.shields.io/docker/stars/badouralix/r-vscode?label=stars&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/r-vscode)
[![Docker Image Version (latest by date)](https://img.shields.io/docker/v/badouralix/r-vscode?logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/r-vscode)
[![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/badouralix/r-vscode?label=size&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/r-vscode)
[![MicroBadger Layers](https://img.shields.io/microbadger/layers/badouralix/r-vscode?logo=docker&logoColor=white)](https://microbadger.com/images/badouralix/r-vscode)

This **Dockerfile** builds an remote-container image for R programming with vscode and <https://code.visualstudio.com/docs/remote/containers>.

See the repo on [Docker Hub](https://hub.docker.com/r/badouralix/r-vscode/).

## Usage

```bash
# In your R project folder
docker run -d --rm -v $PWD:/workspaces/${PWD##*/} badouralix/r-vscode
```

Then vscode can attach to the running container
<https://code.visualstudio.com/docs/remote/containers#_attaching-to-a-docker-container>

## License

All contents licensed under the [MIT license](https://github.com/badouralix/dockerfiles/blob/master/r-vscode/LICENSE)
