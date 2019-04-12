#!/usr/bin/env python3
import sys
import os
from pathlib import Path
from common import run

songs_root = Path(sys.argv[1])
os.chdir(songs_root)
pdf_dir_name = songs_root.name + '_pdf'
run(['mkdir', pdf_dir_name])
odt_files = run('find . -name *.odt')
for odt_file in odt_files:
    run(['libreoffice',
        '--headless',
        '--convert-to', 'pdf',
        '--outdir', pdf_dir_name,
        odt_file])