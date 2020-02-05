filetype off                  " required
set clipboard=unnamed
set bg=dark

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'morhetz/gruvbox'
" Color Coding
Plugin 'jeaye/color_coded'
" File Tree
Plugin 'scrooloose/nerdtree'
" Better syntax highlighting
Plugin 'justinmk/vim-syntax-extra'
" Automatic completion of brackets etc.
Plugin 'jiangmiao/auto-pairs'
" Python mode
Plugin 'python-mode/python-mode'
" You Complete Me file generation for color_coded
Plugin 'rdnetto/YCM-Generator'
" You Complete Me
Plugin 'Valloric/YouCompleteMe'

call vundle#end()            " required
filetype plugin indent on    " required

syntax on
set number
set wildmenu
set path+=**

let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
set backspace=indent,eol,start

