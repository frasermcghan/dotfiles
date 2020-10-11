filetype plugin on

call plug#begin('~/.vim/plugged')
Plug 'lifepillar/vim-solarized8'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dense-analysis/ale'
Plug 'vim-scripts/taglist.vim'
Plug 'ycm-core/YouCompleteMe'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'lervag/vimtex'
call plug#end()

syntax on

set termguicolors
set background=dark
colorscheme solarized8_high
let g:airline_theme='solarized'

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

" ------- YouCompleteMe ---------------
" Close YCM info window after completion
let g:ycm_autoclose_preview_window_after_completion = 1

" vimtex auto completion
if !exists('g:ycm_semantic_triggers')
let g:ycm_semantic_triggers = {}
endif
au VimEnter * let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme
" -------------------------------------

" ------- NerdTree --------------------
map <C-n> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
" -------------------------------------

" ------ Markdown ---------------------
let g:instant_markdown_mathjax = 1
let g:instant_markdown_autoscroll = 0
" -------------------------------------

" ------ VimTex -----------------------
let g:tex_flavor = 'latex'
