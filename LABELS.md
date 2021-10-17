# Labels

Docker images built from this repository are annotated with
[docker labels](https://docs.docker.com/engine/reference/builder/#label) that
provide metadata around the image.

We used to follow the [Label Schema Convention (RC1)](http://label-schema.org/rc1/).
As it is now deprecated, we currently follow the
[OCI Image Spec](https://github.com/opencontainers/image-spec/blob/master/annotations.md).

## Label Schema Convention (RC1)

These labels are not set anymore. This section is kept for purely historical
reasons.

| Label Key                         |   Source    |
| :-------------------------------- | :---------: |
| `maintainer`                      | Dockerfile  |
| `org.label-schema.build-date`     | hooks/build |
| `org.label-schema.docker.context` | hooks/build |
| `org.label-schema.vcs-ref`        | hooks/build |
| `org.label-schema.vcs-url`        | hooks/build |
| `org.label-schema.schema-version` | hooks/build |

## OCI Image Spec

| Label Key                                |   Source   |
| :--------------------------------------- | :--------: |
| `org.opencontainers.image.authors`       | Dockerfile |
| `org.opencontainers.image.created`       |   buildx   |
| `org.opencontainers.image.description`   | Dockerfile |
| `org.opencontainers.image.documentation` |   buildx   |
| `org.opencontainers.image.licenses`      |            |
| `org.opencontainers.image.ref.name`      |            |
| `org.opencontainers.image.revision`      |   buildx   |
| `org.opencontainers.image.source`        |   buildx   |
| `org.opencontainers.image.title`         |            |
| `org.opencontainers.image.url`           |            |
| `org.opencontainers.image.vendor`        |            |
| `org.opencontainers.image.version`       |            |

## Github Actions

| Label Key                       | Source |
| :------------------------------ | :----: |
| `com.github.actions.event_name` | buildx |
| `com.github.actions.job`        | buildx |
| `com.github.actions.run_id`     | buildx |
| `com.github.actions.run_url`    | buildx |
