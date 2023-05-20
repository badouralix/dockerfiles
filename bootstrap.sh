#!/usr/bin/env bash

# Fail hard
set -euxo pipefail

# Create image folder
mkdir -p "$1/latest"

# Create an empty dockerfile
touch "$1/latest/Dockerfile"

# Create default readme
# See syntax in http://tldp.org/LDP/abs/html/here-docs.html
cat > "$1/README.md" <<EOF
# $1

[![Docker Pulls](https://img.shields.io/docker/pulls/badouralix/$1?label=pulls&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/$1)
[![Docker Stars](https://img.shields.io/docker/stars/badouralix/$1?label=stars&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/$1)
[![Docker Image Version (latest by date)](https://img.shields.io/docker/v/badouralix/$1?logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/$1)
[![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/badouralix/$1?label=size&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/$1)

See the repo on [Docker Hub](https://hub.docker.com/r/badouralix/$1/).

## Usage

\`\`\`bash
docker run -it --rm badouralix/$1
\`\`\`

## License

Unless expressly stated otherwise, all contents licensed under the [MIT License](https://github.com/badouralix/dockerfiles/blob/main/LICENSE).
EOF

# Create default dockerignore
# See syntax in http://tldp.org/LDP/abs/html/here-docs.html
cat > "$1/latest/.dockerignore" <<EOF
hooks/
platforms.txt
EOF

# Create default platforms.txt
# See syntax in http://tldp.org/LDP/abs/html/here-docs.html
cat > "$1/latest/platforms.txt" <<EOF
linux/amd64,linux/arm64
EOF

# Final word
set +x
echo
echo "Next steps:"
echo " - write the dockerfile"
echo " - update the readme"
echo " - create a new repository on dockerhub"
echo " - retrieve a webhook url from microbadger"
