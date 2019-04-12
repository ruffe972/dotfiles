#!/usr/bin/env python3
import os
from pathlib import Path
from common import run


def should_be_linked(path: Path) -> bool:
    return path.name != '.gitignore' \
        and dotfiles / Path('.git') not in path.parents \
        and dotfiles / Path('scripts') not in path.parents


home = Path(os.environ['HOME'])
dotfiles = Path(__file__).absolute().parent.parent
assert dotfiles.name.endswith('dotfiles')
all_files = run(['find', str(dotfiles), '-type', 'f'])
all_paths = [Path(path) for path in all_files]
link_targets = list(filter(should_be_linked, all_paths))

for target in link_targets:
    print(target)
input('Press Enter to make links to these files.')

for target in link_targets:
    relative_link_path = Path(target).relative_to(dotfiles)
    link_path = home / relative_link_path
    run(['mkdir', '--parents', '--verbose', str(link_path.parent)])
    run(['ln',
        '--symbolic',
        '--force',
        '--verbose',
        str(target),
        str(link_path)])
