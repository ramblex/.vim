" My vim file

filetype off
call pathogen#runtime_append_all_bundles()
filetype on

set nocompatible

" Security
set modelines=0

" Tabs/spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2

let mapleader = ","

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %
nnoremap <leader>b :b<space>

set wrap
set textwidth=79
set formatoptions=qrn1

set list
set listchars=trail:⋅,tab:▸\

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

au FocusLost * :wa
au! BufRead,BufNewFile *.haml         setfiletype haml

nnoremap <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>
nnoremap <leader>q gqip
nnoremap <leader>v V`]
inoremap jj <ESC>

if has('gui_running')
    set guifont=Menlo:h12
    colorscheme alex
    set background=dark
    set autochdir
    set relativenumber
    "set undofile
    set colorcolumn=100
    set linespace=2

    set go-=T
    set go-=l
    set go-=L
    set go-=r
    set go-=R
endif
