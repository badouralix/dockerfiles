#!/bin/sh
set -e

# Prepend "rnacher" if the first argument is not an executable
if ! type -- "$1" &> /dev/null; then
	set -- rancher "$@"
fi

exec "$@"
