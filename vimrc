" My vim file

set nocompatible
filetype off
set rtp+=~/.vim/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'vim-scripts/wombat256.vim'
Bundle 'chrismetcalf/vim-yankring'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-markdown'
Bundle 'scrooloose/nerdcommenter'
Bundle 'godlygeek/tabular'
Bundle 'jgdavey/vim-railscasts'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'vim-coffee-script'
Bundle 'taglist.vim'

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
set nocursorline
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
nnoremap <leader>T :TlistToggle<cr>
nnoremap <leader>r :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>

set wrap
set textwidth=79
set formatoptions=qrn1

set list
set listchars=trail:⋅,tab:▸·

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Table alignment
inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a
function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction

au FocusLost * :wa
au! BufRead,BufNewFile *.haml         setfiletype haml
au! BufRead,BufNewFile *.msgs         setfiletype c

nnoremap <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>
nnoremap <leader>q gqip
nnoremap <leader>v V`]

colorscheme wombat256mod

nnoremap <leader>n :tn<cr>
nnoremap <leader>p :tp<cr>

nnoremap <leader>t :Tabularize /\|<CR>

highlight Pmenu ctermfg=15 ctermbg=0
highlight PmenuSel ctermfg=1 ctermbg=0

if has('gui_running')
    set guifont=Bitstream\ Vera\ Sans\ Mono\ 9
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
