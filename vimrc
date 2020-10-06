set nocompatible
"
call plug#begin()
Plug 'jiangmiao/auto-pairs'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'ycm-core/YouCompleteMe'
call plug#end()
set noshowmode " When airline is loaded, showmode is useless
let g:ycm_extra_conf_globlist = ['~/dotfiles/ycm_extra_conf/*']
"
if has('gui_running') || (exists("+termguicolors") && &t_Co >= 256)
    colorscheme gruvbox
    set background=dark
    set termguicolors
endif
"
if has('win32')
    set encoding=utf-8
    set fileencoding=utf-8
    set langmenu=en_US
    let $LANG='en_US'
endif
"
if has('gui_running')
    set guifont=Fira\ Code\ 13,Consolas:h14
    set guioptions-=m
    set guioptions-=T
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif
"
syntax on
filetype plugin indent on
set autoindent
set nowrap
set mouse=a
set backspace=eol,start,indent
set noerrorbells visualbell t_vb=
set ttimeoutlen=50
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
"
function GetExecutablePath()
    if has('win32')
        return shellescape('%:r')
    endif
    return './'.shellescape('%:r')
endfunction
autocmd filetype c   nnoremap <F9>  :w <bar> exec '!gcc -std=c11   -O2 -Wall '.shellescape('%').' -o '.shellescape('%:r').' && '.GetExecutablePath()<CR>
autocmd filetype c   nnoremap <F10> :w <bar> exec '!gcc -std=c11   -O2 -Wall '.shellescape('%').' -o '.shellescape('%:r')<CR>
autocmd filetype cpp nnoremap <F9>  :w <bar> exec '!g++ -std=c++14 -O2 -Wall '.shellescape('%').' -o '.shellescape('%:r').' && '.GetExecutablePath()<CR>
autocmd filetype cpp nnoremap <F10> :w <bar> exec '!g++ -std=c++14 -O2 -Wall '.shellescape('%').' -o '.shellescape('%:r')<CR>
