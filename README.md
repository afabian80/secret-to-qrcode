# secret-to-qrcode
Encrypt/decrypt short text to/from qr code

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
$ ls -l
total 16
-rwxr-xr-x. 1 akos akos   98 Sep  1 18:02 decode.sh
-rwxrwxr-x. 1 akos akos  139 Sep  1 17:50 encode.sh
-rw-r--r--. 1 akos akos 1068 Sep  1 17:59 LICENSE
-rw-r--r--. 1 akos akos   62 Sep  1 17:59 README.md
$ 
$ ./encode.sh 
Enter secret: what is love, baby don't hurt me
$ 
$ ls -l
total 20
-rwxr-xr-x. 1 akos akos   98 Sep  1 18:02 decode.sh
-rwxrwxr-x. 1 akos akos  139 Sep  1 17:50 encode.sh
-rw-r--r--. 1 akos akos 1068 Sep  1 17:59 LICENSE
-rw-r--r--. 1 akos akos   62 Sep  1 17:59 README.md
-rw-rw-r--. 1 akos akos 1265 Sep  1 18:05 secret.png
$ 
$ ./decode.sh 
what is love, baby don't hurt me

$ 

```
