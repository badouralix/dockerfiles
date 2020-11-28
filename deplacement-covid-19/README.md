# deplacement-covid-19

[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/badouralix/deplacement-covid-19?label=build&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/deplacement-covid-19)
[![Docker Pulls](https://img.shields.io/docker/pulls/badouralix/deplacement-covid-19?label=pulls&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/deplacement-covid-19)
[![Docker Stars](https://img.shields.io/docker/stars/badouralix/deplacement-covid-19?label=stars&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/deplacement-covid-19)
[![Docker Image Version (latest by date)](https://img.shields.io/docker/v/badouralix/deplacement-covid-19?logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/deplacement-covid-19)
[![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/badouralix/deplacement-covid-19?label=size&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/deplacement-covid-19)
[![MicroBadger Layers](https://img.shields.io/microbadger/layers/badouralix/deplacement-covid-19?logo=docker&logoColor=white)](https://microbadger.com/images/badouralix/deplacement-covid-19)

This **Dockerfile** builds an image serving the official covid-19 générateur d'attestation de déplacement dérogatoire.

See the repo on [Docker Hub](https://hub.docker.com/r/badouralix/deplacement-covid-19/).

## Usage

```bash
docker run -it --rm -p 8080:80 badouralix/deplacement-covid-19
```

Then open <http://localhost:8080> on your browser.

### Q2 2020

![](https://user-images.githubusercontent.com/19719047/100514517-bc98d780-3175-11eb-91fe-488aedfcfa5c.png)

### Q4 2020

![](https://user-images.githubusercontent.com/19719047/100514677-07671f00-3177-11eb-8d37-eadb1e7373eb.png)

## Links

- <https://media.interieur.gouv.fr/deplacement-covid-19/>
- <https://github.com/LAB-MI/deplacement-codiv-19> or <https://github.com/LAB-MI/deplacement-covid-19>
- <https://github.com/LAB-MI/attestation-deplacement-derogatoire-q4-2020>

## License

All contents licensed under the [WTFPL](https://github.com/badouralix/dockerfiles/blob/master/LICENSE)
