#!/usr/bin/env python3
import os
import subprocess as sp
from typing import List


# TODO test it manually.
# Wrapper for subprocess.run() that allows to call it with a single string
# with spaces instead of a list of strings.
# Returns a list of strings from stdout.
def run(args) -> List[str]:
    if type(args) is str:
        args = args.split(' ')
    output_string = sp.run(args, stdout=sp.PIPE) \
        .stdout.decode('utf-8')
    return output_string.split('\n')[:-1]