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

[![](https://images.microbadger.com/badges/version/badouralix/$1.svg)](https://microbadger.com/images/badouralix/$1 "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/badouralix/$1.svg)](https://microbadger.com/images/badouralix/$1 "Get your own image badge on microbadger.com")

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
