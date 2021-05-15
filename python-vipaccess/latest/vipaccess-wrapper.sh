#!/bin/sh
set -euxo pipefail

# Provision credential
vipaccess provision $@
echo

# Print credential
cat ~/.vipaccess
echo

# Print qrcode
qrencode -t UTF8 $(vipaccess uri)
