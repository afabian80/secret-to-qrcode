#!/usr/bin/bash -eu

read -s -p "Password: " password
echo

key=$(./stretch.py "${password}" "salt must be fix to decode")

zbarimg --quiet --raw secret.png | base64 -d | gpg -q -d --batch --passphrase "${key}" | xargs --null echo
