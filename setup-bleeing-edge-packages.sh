#!/bin/sh

# Make sure we are running as root:
[ "$(id -u)" -ne 0 ] && echo "Must run as root" && exit

PORTAGE_FILE=/etc/portage/package.accept_keywords

printf \
"app-editors/neovim amd64
dev-lisp/sbcl amd64
dev-lang/ghc amd64" \
>> "$PORTAGE_FILE"
