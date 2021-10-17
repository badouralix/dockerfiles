# Hooks

The `buildx` workflow runs `hooks/pre_build` if it exists in the image folder. Do not forget the `set -euo pipefail` safeguard.

This pre build hook can output `extra_labels` and `extra_tags` that will be used during the build and push steps.

See <https://docs.github.com/en/actions/learn-github-actions/workflow-commands-for-github-actions#setting-an-output-parameter>.

## History

This repository used to leverage dockerhub custom build phase hooks.

Now that images are built with github actions, these hooks were re-implemented to run as dedicated steps.

## Documentation

- <https://docs.docker.com/docker-hub/builds/advanced/#custom-build-phase-hooks>
- <https://www.padok.fr/en/blog/multi-architectures-docker-iot>
