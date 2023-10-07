call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'bling/vim-airline'
Plug 'tomasr/molokai'
Plug 'jiangmiao/auto-pairs'
"leader C space for commeting a given line
Plug 'scrooloose/nerdcommenter'
"highlihgts trailing whitespace
Plug 'junegunn/fzf'
"Plug 'bronson/vim-trailing-whitespace'
Plug 'ntpeters/vim-better-whitespace'
call plug#end()
"[tomasr/molokai]
let g:molokai_original = 1
colorscheme molokai

"[scrooloose/nedcommenter]
let g:NERDCustomDelimeters = { 'swift': { 'left': '// '} }
let g:NERDDefaultAlign = 'left'
set cursorline
set ruler

set number
"set relativenumber

"Works just fine in many terminals
set mouse=a

"Display hidden characters
set list
set listchars=tab:▸\ ,eol:¬

"lines
set wrap
set textwidth=110
set colorcolumn=110
set formatoptions=qrnj1

"apparently this works well
set autoindent

"tab settings
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set smarttab

"fzf
nnoremap <C-p> :FZF<cr>
"
let mapleader = ","

"faster scroll
set scrolljump=-15

"integration with macOS clipboard
set clipboard=unnamed

"undo that works after re-entering a file
set undofile
set undodir=/tmp

"[scrooloose/nerdcommenter]
let g:AutoPairsMultilineClose = 0
let g:AutoPairsMapSpace = 0

"[scrooloose/nedtree]
nnoremap <leader>a :NERDTreeToggle<cr>


nnoremap <leader>space :nohlsearch<cr>
