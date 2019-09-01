# secret-to-qrcode
Encrypt/decrypt short text to/from qr code

You can encrypt small texts and passwords in qr code images and print them.
Later you can scan back and decode them. 

![Sample](sample.png)

## Encyption
Execute encode.sh to encrypt a text into a QR code using Gnu PGP.
Type the text after the prompt.
Enter the password in the popup window.

The encrypted text will be saved in the secret.png image.

## Decryption
Simply execute the decode.sh script.
It assumes the secret.png file is there.
It may not prompt for password if it is already cached by the OS.

## Example

```
$ ./encode.sh 
Enter secret: what is love, baby don't hurt me

$ # secret is in the secret.png image

$ ./decode.sh 
what is love, baby don't hurt me
```
