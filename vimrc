<<<<<<< HEAD
let mapleader = ';'
set nocompatible

filetype on
filetype indent on

"visual configs
set title
set scrolloff=9
=======
" visual configs
>>>>>>> 3a29e3e (initial vimrc)
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
<<<<<<< HEAD
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
"Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'fatih/vim-go'
Plug 'wincent/command-t'
call plug#end()

inoremap <silent> <Tab> <C-n>

nnoremap <leader>t :CommandT<cr>
nnoremap <leader>; <C-w>

set background=dark
colorscheme sorbet

set bs=indent,eol,start

let g:ycm_gopls_binary_path = expand('$GOPATH/bin/gopls')
let g:vimspector_enable_mappings = 'HUMAN'
let g:CommandTPreferredImplementation='ruby'

nnoremap <M-f> :!echo 'tmux' <CR>
=======
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
autocmd BufWritePre * :%s/\s\+$//e

" general keybinds keybinds

inoremap { {<CR>}<Esc>ko
inoremap ( ()<Esc>ha
inoremap <expr> ) getline('.')[col('.')-1]==')' ? '<c-g>U<right>' : ')'

inoremap <C-d> <Esc>
inoremap <C-_> //<space>

nnoremap F ^
nnoremap f w
nnoremap B $

nnoremap <silent> <C-s> :vsplit <CR>
>>>>>>> 3a29e3e (initial vimrc)
