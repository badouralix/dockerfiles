# Hooks

All images built on docker hub infrastructure are slightly modified to embedded
default labels. Most of the time, `hooks/` folders are actually symlinks to
[.hooks/](.hooks/), but some images use more complex workflows.

## Documentation

- <https://docs.docker.com/docker-hub/builds/advanced/#custom-build-phase-hooks>
