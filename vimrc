" My vim file

set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'mrtazz/molokai'
Bundle 'chrismetcalf/vim-yankring'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'rails.vim'
Bundle 'vim-coffee-script'

filetype on

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
set directory=~/.vim-swp/
set nobackup
set nowritebackup
set noswapfile

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
nnoremap <leader>b :FufBuffer<cr>
nnoremap <leader>f :FufFile<cr>

set wrap
set textwidth=79
set formatoptions=qrn1

set list
set listchars=trail:⋅,tab:▸·

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

au FocusLost * :wa
au! BufRead,BufNewFile *.haml         setfiletype haml
au! BufRead,BufNewFile *.msgs         setfiletype c

nnoremap <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>
nnoremap <leader>q gqip
nnoremap <leader>v V`]
"inoremap jj <ESC>

if has('gui_running')
    set guifont=Bitstream\ Vera\ Sans\ Mono\ 9
    colorscheme molokai
    set background=dark
    set autochdir
    set relativenumber
    "set undofile
    set colorcolumn=80
    set linespace=2

    set columns=84
    set lines=39

    set go-=m
    set go-=T
    set go-=l
    set go-=L
    set go-=r
    set go-=R
endif
