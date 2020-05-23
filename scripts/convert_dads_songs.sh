#!/bin/bash

echo todo
exit

set -e  # exit immediately if a command exits with a non-zero status
PDF_DIR=аккорды_pdf

cp -r "$1" .
mv "$(basename "$1")" $PDF_DIR
cd $PDF_DIR
find . -iname '*.odt' \
    -execdir libreoffice --convert-to pdf {} \; \
    -delete