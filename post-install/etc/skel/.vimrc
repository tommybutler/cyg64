" don't sacrifice functionality and features just to preserve backward compatibility with vi
set nocompatible

" turn on syntax highlighting
syntax enable

" if a given file type (perl, ruby, python, c, etc) has its own special auto-indentation rules, use them
filetype plugin indent on

" turn on auto-indenting (use this if you turn off option ':filetype plugin indent on')
":set ai

" make auto-indenting 'smarter' (use this if you turn off option ':filetype plugin indent on')
":set si

" optimize syntax highlighting for a dark terminal
set bg=dark

" tabs are 3 spaces wide
set ts=3

" auto-indentation kicks in 3 spaces
set sw=3

" run case insensitive searches by default
set ic

" XXX HERE
" swap tabs out for spaces
set expandtab

" XXX HERE
" automatically strip trailing whitespace when a file is saved
autocmd BufWritePre * :%s/\s\+$//e

" place a very helpful 'status-bar' at the bottom of the window
set ruler

" highlight matched parens, brackets, beginning and end of code blocks
set showmatch

" show line numbers
set number

" turn off unbearable search highlighting default
set nohlsearch

" the next two lines use the F5 key to toggle paste mode on/off
nnoremap <F5> :set invpaste paste?<CR>
set pastetoggle=<F5>

" special folding rules for perl files
let perl_fold = 1

" auto-folding behavior is dictated based on file-type, when applicable
set foldmethod=syntax

" lightly highlight the current line on which the cursor is placed (turn this off if it gets annoying)
":set cursorline

" lightly highlight the current column in which the cursor is placed (turn this off if it gets annoying)
":set cursorcolumn

" tell vim to scan the file for a modeline that contains in-line vim commands and options, just for that file
set modeline

" Make the 81st column stand out
highlight colorcolumn ctermbg=Blue
set colorcolumn=81

" the 'modeline' below tells vim that this is a vim command file (duh?)
" vim: set ft=vim :
