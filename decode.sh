#!/usr/bin/bash -eu

zbarimg --quiet --raw secret.png | base64 -d | gpg -q -d | xargs --null echo
