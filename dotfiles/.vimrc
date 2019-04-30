" vim: nu: tabstop=2: softtabstop=2: shiftwidth=2: expandtab

" General settings
"================================================================================================="
set nocompatible
set viminfo='20,\"50
set noswapfile
set history=50
set undolevels=1000
set modeline
set modelines=3
set encoding=utf-8
set fileencoding=utf-8

" Interface
"================================================================================================="
set wildmode=list:longest,full
set statusline=%([%-n]%y\ %f%M%R%)\ %=\ %(%l,%c%V\ %P\ [0x%02.2B]%)
set showmode
set showcmd
set ruler
set nu

" Search and navigation
"================================================================================================="
set hlsearch
set incsearch
set ignorecase
set smartcase
map 1h 10h
map 1j 10j
map 1k 10k
map 1l 10l

" Indentation
"================================================================================================="
filetype on
filetype plugin on
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Error prevention
"================================================================================================="
syntax on
set showmatch
set matchtime=3

"" Autocommands
"================================================================================================="
autocmd! BufNewFile * :startinsert!
autocmd! BufNewFile * :startinsert!
autocmd! BufNewFile,BufEnter *.yicf setlocal ts=8 sts=8 sw=8
autocmd Filetype js   setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype json setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype php  setlocal ts=4 sts=4 sw=4 expandtab
autocmd Filetype pl   setlocal ts=4 sts=4 sw=4 expandtab
autocmd Filetype py   setlocal ts=4 sts=4 sw=4 expandtab
autocmd Filetype rb   setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype yml  setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype yaml setlocal ts=2 sts=2 sw=2 expandtab

" Colors
"================================================================================================="
set background=dark
hi NonText      term=bold  cterm=bold  ctermfg=darkred
hi LineNr       term=none  cterm=none  ctermfg=darkgray
hi ModeMsg      term=bold  cterm=bold  ctermfg=red
hi Visual       term=none  cterm=none  ctermfg=none      ctermbg=darkgray
hi IncSearch    term=none  cterm=none  ctermfg=none      ctermbg=darkgray
hi Comment      term=none  cterm=none  ctermfg=darkgray
hi String       term=none  cterm=none  ctermfg=darkcyan
hi Number       term=none  cterm=none  ctermfg=darkgreen
hi Identifier   term=none  cterm=none  ctermfg=yellow
hi Function     term=none  cterm=none  ctermfg=yellow
hi Statement    term=none  cterm=none  ctermfg=darkred
hi Conditional  term=bold  cterm=bold  ctermfg=none
hi Repeat       term=bold  cterm=bold  ctermfg=none
hi Label        term=none  cterm=none  ctermfg=magenta
hi Operator     term=none  cterm=none  ctermfg=darkred
hi Keyword      term=none  cterm=none  ctermfg=magenta
hi Exception    term=bold  cterm=bold  ctermfg=none
hi PreProc      term=none  cterm=none  ctermfg=yellow
hi Type         term=none  cterm=none  ctermfg=magenta
hi Special      term=bold  cterm=bold  ctermfg=darkred
hi Error        term=none  cterm=none  ctermfg=none      ctermbg=none
