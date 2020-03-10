#!/bin/bash

echo todo test me
exit

set -e  # exit immediately if a command exits with a non-zero status

rm -rf аккорды_pdf
cp -r "$1" аккорды_pdf
find аккорды_pdf -iname '*.odt' \
    -execdir libreoffice --convert-to pdf {} \; \
    -delete