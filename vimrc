let mapleader = ';'
set nocompatible

filetype on
filetype indent on

"visual configs
set title
set scrolloff=9
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set cmdheight=1
set cursorline
set shell=zsh
syntax enable

"finding
" Note: The ':b' followed by a number command allows you to use vim buffer to hotswap files
set path+=**
set wildmenu

" navigation shortcuts
nnoremap <leader>n :bn <cr>
nnoremap <leader>p :bp <cr>
"nnoremap  <S-f> :find ~/Desktop<cr> " I no longer use vim find.

set nu rnu
set hlsearch " `:noh` to terminate the current search
set ruler

" the cursor.
xnoremap <silent> <cr> "*y:silent! let searchTerm = '\V'.substitute(escape(@*, '\/'), "\n", '\\n', "g") <bar> let @/ = searchTerm <bar> echo '/'.@/ <bar> call histadd("search", searchTerm) <bar> set hls<cr>

" plugins
call plug#begin()
Plug 'ervandew/supertab'
Plug 'vim-airline/vim-airline'
Plug 'fatih/vim-go'
Plug 'wincent/command-t'
call plug#end()

inoremap <silent> <Tab> <C-n>

nnoremap <leader>t :CommandT<cr>
nnoremap <leader>; <C-w>

set background=dark
colorscheme habamax

set bs=indent,eol,start

let g:ycm_gopls_binary_path = expand('$GOPATH/bin/gopls')
let g:CommandTPreferredImplementation='ruby'

nnoremap <M-f> :!echo 'tmux' <CR>
filetype indent on
colorscheme slate
syntax enable
filetype on

set laststatus=2
set statusline+=\ %F\ %M\ %Y\ %R
set statusline+=%{\"\\ua0\"}
set statusline+=\row:\ %l\ col:\ %c

set nu
set hlsearch " `:noh` to terminate the current search
set cursorline
set ruler

" autocommands
" autocmd BufWritePre * :%s/\s\+$//e

" general keybinds keybinds
