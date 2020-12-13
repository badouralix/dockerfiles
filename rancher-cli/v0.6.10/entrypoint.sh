#!/bin/sh
set -e

# Prepend "rancher" if the first argument is not an executable
if ! type -- "$1" &> /dev/null; then
	set -- rancher "$@"
fi

exec "$@"
