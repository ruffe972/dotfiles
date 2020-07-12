#!/bin/bash
# Put script near аккорды dir, run it from parent dir.

echo 'test me + shellcheck'
exit

set -e  # exit immediately if a command exits with a non-zero status
cp -r аккорды аккорды_pdf
cd аккорды_pdf
find . -iname '*.odt' \
    -execdir libreoffice --convert-to pdf {} \; \
    -delete