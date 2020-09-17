set nocompatible
syntax on
filetype plugin indent on
set autoindent
set nowrap
set mouse=a
set backspace=eol,start,indent
set noerrorbells visualbell t_vb=
"
set wildmode=longest:full,full
set wildmenu
"
set number
set relativenumber
set ruler
"
set ignorecase
set smartcase
"
set incsearch
set hlsearch
"
set list
set listchars=tab:»\ ,extends:›,precedes:‹,trail:·
"
set backspace=indent,eol,start
set laststatus=2
set autochdir
set showcmd
"
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
"
set splitbelow
set splitright
"
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
"
nnoremap <C-n> :set relativenumber!<CR>
