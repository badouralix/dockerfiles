# curl-jq

[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/badouralix/curl-jq?label=build&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/curl-jq)
[![Docker Pulls](https://img.shields.io/docker/pulls/badouralix/curl-jq?label=pulls&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/curl-jq)
[![Docker Stars](https://img.shields.io/docker/stars/badouralix/curl-jq?label=stars&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/curl-jq)
[![Docker Image Version (latest by date)](https://img.shields.io/docker/v/badouralix/curl-jq?logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/curl-jq)
[![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/badouralix/curl-jq?label=size&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/curl-jq)

This **Dockerfile** embeds both `curl` and `jq`, and can be used to run complex extractions on remote json resources.

See the repo on [Docker Hub](https://hub.docker.com/r/badouralix/curl-jq/).

## Usage

### Shell mode

```bash
$ docker run -it --rm badouralix/curl-jq
/ # curl https://hub.docker.com/api/build/v1/source/?image=badouralix%2Ftoolbox 2>/dev/null | jq '.objects[0]'
{
  "autotests": "OFF",
  "build_in_farm": true,
  "build_settings": [
    "/api/build/v1/setting/cbb58db1-5001-499a-8d1a-d549535fc077/"
  ],
  "channel": "Stable",
  "image": "badouralix/toolbox",
  "owner": "badouralix",
  "provider": "Github",
  "repo_links": true,
  "repository": "dockerfiles",
  "resource_uri": "/api/build/v1/source/e985c621-a0af-40d4-b84b-f01ae12a0b64/",
  "state": "Success",
  "uuid": "e985c621-a0af-40d4-b84b-f01ae12a0b64"
}
```

### Inline mode

```bash
$ docker run --rm badouralix/curl-jq sh -c "curl https://hub.docker.com/api/build/v1/source/?image=badouralix%2Ftoolbox 2>/dev/null | jq '.objects[0]'"
{
  "autotests": "OFF",
  "build_in_farm": true,
  "build_settings": [
    "/api/build/v1/setting/cbb58db1-5001-499a-8d1a-d549535fc077/"
  ],
  "channel": "Stable",
  "image": "badouralix/toolbox",
  "owner": "badouralix",
  "provider": "Github",
  "repo_links": true,
  "repository": "dockerfiles",
  "resource_uri": "/api/build/v1/source/e985c621-a0af-40d4-b84b-f01ae12a0b64/",
  "state": "Success",
  "uuid": "e985c621-a0af-40d4-b84b-f01ae12a0b64"
}
```

## License

All contents licensed under the [WTFPL](https://github.com/badouralix/dockerfiles/blob/master/LICENSE)
