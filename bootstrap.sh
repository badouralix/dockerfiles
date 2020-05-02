#!/usr/bin/env bash

# Fail hard
set -euxo pipefail

# Create image folder
mkdir $1

# Create an empty dockerfile
touch $1/Dockerfile

# Link hooks used by dockerhub
ln -s ../.hooks $1/hooks

# Create default readme
# See syntax in http://tldp.org/LDP/abs/html/here-docs.html
cat > $1/README.md <<EOF
# $1

[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/badouralix/$1?label=build&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/$1)
[![Docker Pulls](https://img.shields.io/docker/pulls/badouralix/$1?label=pulls&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/$1)
[![Docker Stars](https://img.shields.io/docker/stars/badouralix/$1?label=stars&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/$1)
[![Docker Image Version (latest by date)](https://img.shields.io/docker/v/badouralix/$1?logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/$1)
[![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/badouralix/$1?label=size&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/$1)
[![MicroBadger Layers](https://img.shields.io/microbadger/layers/badouralix/$1?logo=docker&logoColor=white)](https://microbadger.com/images/badouralix/$1)

See the repo on [Docker Hub](https://hub.docker.com/r/badouralix/$1/).

## Usage

\`\`\`bash
docker run -it --rm badouralix/$1
\`\`\`

## License

All contents licensed under the [WTFPL](https://github.com/badouralix/dockerfiles/blob/master/LICENSE)
EOF

# Create default dockerignore
# See syntax in http://tldp.org/LDP/abs/html/here-docs.html
cat > $1/.dockerignore <<EOF
README.md
hooks/
EOF

# Final word
echo "Don't forget to update the main README.md"
