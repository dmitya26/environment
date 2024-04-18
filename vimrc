" How to repeat characters.
" escape
" number of repeats
" i (insert)
" letter
" escape

"visual configs
set scrolloff=10
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
filetype indent on
set cmdheight=1
set shell=zsh
"colorschemes delek, peachpuff, slate, blue
filetype on

set laststatus=2
set statusline+=\ %F\ %M\ %Y\ %R
set statusline+=%{\"\\ua0\"}
set statusline+=\row:\ %l\ col:\ %c

set nu rnu
set hlsearch " `:noh` to terminate the current search
"set cursorline
set ruler

" autocommands
autocmd BufWritePre * :%s/\s\+$//e

nnoremap F ^
nnoremap B $

nnoremap <silent> <C-s> :vsplit <CR>

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
call vundle#begin()
Plugin 'tpope/vim-fugitive'
Plugin 'sheerun/vim-polyglot'
Plugin 'fatih/vim-go'
Plugin 'ku1ik/vim-sunburst'
Plugin 'rstacruz/vim-closer'
call vundle#end()

set background=dark
autocmd BufNew,BufRead *.asm set ft=nasm

colorscheme sunburst

let g:go_highlight_structs = 1
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
