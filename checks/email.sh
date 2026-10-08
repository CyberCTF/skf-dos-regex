#!/bin/sh
# /verify_email checks an address with the regex.
set -e
H=http://web:5000
curl -fsS -d "email=user@example.com" "$H/verify_email" | grep -q "Matched!"
