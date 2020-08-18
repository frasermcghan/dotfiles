call plug#begin('~/.vim/plugged')
Plug 'lifepillar/vim-solarized8'
Plug 'dense-analysis/ale'
Plug 'ycm-core/YouCompleteMe'
call plug#end()

syntax on

set termguicolors
set background=dark
colorscheme solarized8_high

set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set relativenumber
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set hlsearch

imap jk <Esc>


" ------------- ALE config -------------
" pressing Control-e moves to next error
nmap <silent> <C-e> <Plug>(ale_next_wrap)
" don't lint when opening a file
let g:ale_lint_on_enter = 0
" lint when saving file
let g:ale_lint_on_save = 1
" no error background colours
highlight clear ALEErrorSign
highlight clear ALEWarningSign
" -------------------------------------
