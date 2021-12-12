" ========== Global ==========
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard
  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif

set nocompatible
set hidden
set encoding=utf-8
set termguicolors
set t_Co=256
set noerrorbells visualbell t_vb=
set linespace=8
set scrolloff=2
set sidescrolloff=8
set splitbelow
set splitright
set backspace=indent,eol,start
set shell=zsh

set expandtab
set shiftwidth=2
set tabstop=2

set wildmode=longest:full,full
set nowrap
set list
set listchars=tab:>\ ,trail:∙

set undofile
set undolevels=100000

if has("nvim")
  set undodir=~/.vim/.nvim-undo/,~/.vim/nvim-undo,/tmp//
else
  set undodir=~/.vim/.undo/,~/.vim/undo,/tmp//
endif

set undodir=~/.vim/.nvim-undo/,~/.vim/nvim-undo,/tmp//
set backup
set backupdir=/tmp/,/private/tmp
set directory=/tmp/,/private/tmp

set timeout
set timeoutlen=300
set ttimeoutlen=200
set mouse=a
set nostartofline
set number relativenumber
set signcolumn=auto

set shortmess-=S
set shortmess+=c"

set updatetime=2000
set redrawtime=100000
set cmdheight=2

set spelllang=en_us
set spellfile=$HOME/.vim/spell/en.utf-8.add
set spellsuggest+=10

set incsearch
set ignorecase
set smartcase
set hlsearch

set background=dark

filetype plugin indent on
syntax enable

let mapleader="\<Space>"
let maplocalleader="\\"
let pyEnvLib = $VIRTUAL_ENV

" Cursor settings https://vim.fandom.com/wiki/Change_cursor_shape_in_different_modes
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

