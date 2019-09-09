#!/usr/bin/bash -eu

read -s -p "Secret: " secret
echo

read -s -p "Password: " password1
echo

read -s -p "Password again: " password2
echo

if [[ "${password1}" != "${password2}" ]]; then
    echo "Passwords do not match!"
    exit 1
fi

password="${password1}"
image=secret.png
key=$(./stretch.py "${password}" "salt must be fix to decode")

echo "${secret}" | gpg -c --batch --passphrase "${key}" | base64 | qrencode -l H -o "${image}"

echo "Secret encoded and encrypted in ${image}."