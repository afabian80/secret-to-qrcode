#!/usr/bin/python3

import sys

from hashlib import pbkdf2_hmac
from binascii import hexlify

assert len(sys.argv) == 2

password = sys.argv[1]
salt = "ULEL2tNC4sg9jVwNgXZCfnUdIyo="  # salt must be fix to decode QR codes
iterations = 1000000

password = password.encode()
salt = salt.encode()

stretched_key_bytes = pbkdf2_hmac('sha256', password, salt, iterations)
stretched_key = hexlify(stretched_key_bytes).decode()

print(stretched_key)