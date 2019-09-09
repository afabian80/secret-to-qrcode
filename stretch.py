#!/usr/bin/python3

import sys

from hashlib import pbkdf2_hmac
from binascii import hexlify

assert len(sys.argv) == 3

password = sys.argv[1]
salt = sys.argv[2]
iterations = 1000000

#sys.stderr.write("password is '{}'\n".format(password))
#sys.stderr.write("salt is '{}'\n".format(salt))

password = password.encode()
salt = salt.encode()

stretched_key_bytes = pbkdf2_hmac('sha256', password, salt, iterations)
stretched_key = hexlify(stretched_key_bytes).decode()

print(stretched_key)