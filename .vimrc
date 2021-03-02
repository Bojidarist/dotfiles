set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on 

map <C-n> :NERDTreeToggle<CR>

let mapleader=","
let g:airline_theme="bubblegum"

set relativenumber
set tabstop=4

" Functions

function! Latex2PDF()
	:let path = expand('%:p')
	:execute ":!pdflatex ".path
endfunction

function! Latex2PDFX()
	:let path = expand('%:p')
	:let scriptName = expand('%:r')
	:execute ":!pdflatex ".path "&& xdg-open ".scriptName.".pdf"
endfunction
