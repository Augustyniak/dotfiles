call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'bling/vim-airline'
Plug 'tomasr/molokai'
Plug 'jiangmiao/auto-pairs'
"leader C space for commeting a given line
Plug 'scrooloose/nerdcommenter'
"highlihgts trailing whitespaces
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

set wrap
set textwidth=110
set colorcolumn=110

"apparently this works well
set autoindent

let mapleader = ","

"[scrooloose/nedtree]
nnoremap <leader>a :NERDTreeToggle<cr>


nnoremap <leader>space :nohlsearch<cr>
