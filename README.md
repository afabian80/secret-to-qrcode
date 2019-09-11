# secret-to-qrcode
Encrypt/decrypt short text to/from qr code

You can encrypt small texts (for example passwords) in qr code images and print them.
The content is further encrypted, it will as for the encryption password.
Later you can scan back and decode the images.
Text content size is limited by the qr code, but a few sentences are fine.

## Requirements
You need to install these system pacakges:
* gpg
* qrencode
* zbar

And these python packages (if not already installed):
* hashlib
* binascii

For example, on Fedora 30:
```
sudo dnf install gpg qrencode zbar
```

Try to decode this image with the decode.sh script.
Password is **password**.

![Sample](secret.png)

## Encyption
Execute qrencrypt to encrypt a text into a QR code using Gnu PGP's symmetric key encryption. Type the text and the password when prompted.

The encrypted text will be saved in the secret.png image.

## Decryption
Simply execute the qrdecrypt script.
It assumes the secret.png file is there.
It will prompt for the password.

## Example

```
$ ./qrencrypt
Secret: 
Password: 
Password again: 
Secret encoded and encrypted in secret.png.

$ ./qrdecrypt 
Password: 
Your secret is safe in this image!
```
