#!/bin/sh
set -e

# Prepend "easy-blake2s" if the first argument is not an executable
if ! type -- "$1" &> /dev/null; then
	set -- easy-blake2s "$@"
fi

exec "$@"
