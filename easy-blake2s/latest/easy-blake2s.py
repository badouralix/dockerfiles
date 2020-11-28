#!/usr/bin/env python3
import argparse
import hashlib


def main() -> None:
    # Parse arguments
    parser = argparse.ArgumentParser(
        description="Compute the BLAKE2s hash of an input secret."
    )
    parser.add_argument("secret", help="input string to hash")
    args = parser.parse_args()

    # Compute hash
    h = hashlib.new("blake2s")
    h.update(args.secret.encode())

    # Display result
    print(h.hexdigest())


if __name__ == "__main__":
    main()
