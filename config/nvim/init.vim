call plug#begin()
" Syntax
Plug 'keith/swift.vim'
Plug 'fatih/vim-go'
Plug 'cespare/vim-toml'
Plug 'rust-lang/rust.vim'
Plug 'uarun/vim-protobuf'
" File hierarchy
Plug 'scrooloose/nerdtree'
" Improves experience for moving between tmux and nvim buffers
Plug 'christoomey/vim-tmux-navigator'
" Make current line apparent
Plug 'bling/vim-airline'
" Theme
Plug 'tomasr/molokai'
" Show git changes in the sign column
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
" Leader C space for commeting a given line
Plug 'scrooloose/nerdcommenter'
" Highlihgts trailing whitespace
Plug 'junegunn/fzf'
" Make yanked region apparent
Plug 'machakann/vim-highlightedyank'
" Better search
Plug 'mileszs/ack.vim'
" Plug 'bronson/vim-trailing-whitespace'
Plug 'ntpeters/vim-better-whitespace'
" Git commands from within vim
Plug 'tpope/vim-fugitive'
" GH links for selected source code lines
Plug 'tpope/vim-rhubarb'
call plug#end()

let mapleader = ","

" tomasr/molokai
let g:molokai_original = 1
colorscheme molokai

" scrooloose/nedcommenter
let g:NERDCustomDelimeters = { 'swift': { 'left': '// '} }
let g:NERDDefaultAlign = 'left'
set cursorline
set ruler

set number
" set relativenumber

" Works just fine in many terminals
set mouse=a

" Display hidden characters
set list
set listchars=tab:▸\ ,eol:¬

" Lines
set wrap
set textwidth=110
set colorcolumn=110
set formatoptions=qrnj1

" Search
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase

" Apparently this works well
set autoindent

" Sort selected lines
vnoremap <leader>s :'<,'>!sort -f<cr>

" Tab settings
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set smarttab

" FZF
if executable('fzf')
    nnoremap <C-p> :FZF<cr>
endif

" mileszs/ack.vim
if executable('rg')
    let g:ackprg = '/opt/homebrew/bin/rg --vimgrep'
    vnoremap <leader>r :'<,'>Ack!<cr>
    nnoremap <leader>r :Ack! 
endif

" Toggle quickfix buffer
nnoremap <leader><leader> :call ToggleQuickfix()<cr>
function! ToggleQuickfix()
    for buffer in tabpagebuflist()
        if bufname(buffer) == ''
            cclose
            return
        endif
    endfor

    copen
endfunction

" Faster scroll
set scrolljump=-15

" Integration with macOS clipboard
set clipboard=unnamed

" Undo that works after re-entering a file
set undofile
set undodir=/tmp

" scrooloose/nerdcommenter
let g:AutoPairsMultilineClose = 0
let g:AutoPairsMapSpace = 0

" scrooloose/nedtree
nnoremap <leader>a :NERDTreeToggle<cr>

nnoremap <leader>space :nohlsearch<cr>
