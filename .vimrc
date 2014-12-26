execute pathogen#infect()
syntax enable
filetype plugin indent on

" color scheme
set background=dark
colorscheme solarized

" turn off vi compatability mode
set nocompatible

set modelines=0

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set encoding=utf-8

" show relative line numbers
set relativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

" create undo history file
set undofile
set backupdir=./.backup,.,/tmp
set directory=.,./.backup,/tmp

" scroll near edge of screen
set scrolloff=5

set autoindent
set showmode
set showcmd
set hidden

" better menu
set wildmenu
set wildmode=list:longest,full

set visualbell
set cursorline

" fast scrolling
set ttyfast
set ruler

" fix backspace behaviour over newlines etc
set backspace=indent,eol,start

set laststatus=2

let mapleader = ","

" Regexp stuff
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault

set incsearch
set showmatch
set hlsearch

" clear highlights leader+space
nnoremap <leader><space> :noh<cr>

" match brackets on tab key
nnoremap <tab> %
vnoremap <tab> %

" handle longer lines
set wrap
set textwidth=100
set formatoptions=qrn1
set colorcolumn=70

nnoremap j gj
nnoremap k gk

" when do you ever use help?
nnoremap <F1> <ESC>
inoremap <F1> <ESC>
vnoremap <F1> <ESC>

" strip trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" open split window and move focus to it
nnoremap <leader>w <C-w>v<C-w>l

" navigate splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" some movement commands
cnoremap <C-a>  <Home>
cnoremap <C-b>  <Left>
cnoremap <C-f>  <Right>
cnoremap <C-d>  <Delete>
