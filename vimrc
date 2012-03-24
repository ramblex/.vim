" My vim file

set nocompatible
filetype off
set rtp+=~/.vim/vundle
call vundle#rc()

"Bundle 'mattn/gist-vim'
Bundle 'gmarik/vundle'
Bundle 'chrismetcalf/vim-yankring'
"Bundle 'tpope/vim-fugitive'
"Bundle 'tpope/vim-rails'
"Bundle 'tpope/vim-markdown'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'

filetype on
filetype plugin on
filetype indent on
syn on

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
set backspace=indent,eol,start
set laststatus=2
set directory=~/.vim-swp/
set nobackup
set nowritebackup
set noswapfile
set ruler                   " Show the cursor position all the time
set showcmd                 " Display incomplete commands
set showmode                " Display current mode
set wildmenu                " Display files when using e
set wildmode=list:longest

let mapleader = ","

set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <leader>b :FufBuffer<cr>
nnoremap <leader>f :FufFile<cr>

set wrap
set textwidth=79
set formatoptions=qrn1

set list
set listchars=trail:⋅,tab:▸·

highlight Pmenu ctermbg=Black ctermfg=White 
highlight PmenuSel ctermbg=Black ctermfg=Yellow 
