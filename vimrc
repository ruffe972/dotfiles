" todo install neovim and cleanup. do i need terminal editor on mac?
" install vim-sensible
" adapt for both gvim and wsl vim
" cleanup

" Russian
" Default imsearch value is good: it syncs search layout with insert mode layout

set keymap=russian-jcukenwin
set iminsert=0  " Set initial layout to English

" Other

set guicursor=  " Windows Terminal is buggy
set mouse=a  " It's better without the r flag imo

" Indentation
set expandtab
set tabstop=4
set shiftwidth=0
