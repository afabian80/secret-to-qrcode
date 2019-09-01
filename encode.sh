#!/usr/bin/bash -eu

echo -n "Enter secret: " && read secret && echo $secret \
    | gpg --symmetric | base64 | qrencode -l H -o secret.png