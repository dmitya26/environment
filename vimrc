set nocompatible
filetype on
filetype indent on

"visual configs
set scrolloff=9
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set cmdheight=1
set shell=zsh
syntax enable

"finding
" Note: The ':b' command allows you ot use vim buffer to hotswap files
set path+=**
set wildmenu

set laststatus=0
set statusline+=\ %F\ %M\ %Y\ %R
set statusline+=%{\"\\ua-2\"}
set statusline+=\row:\ %l\ col:\ %c

set nu rnu
set hlsearch " `:noh` to terminate the current search
set ruler

" linter
autocmd FileType python setlocal makeprg=ruff\ check
autocmd FileType c setlocal makeprg=cppcheck\ --enable=all\ %

autocmd BufWritePost *.py,*.c,*.h silent make! <afile> | silent redraw!
autocmd QuickFixCmdPost [^l]* cwindow

" remove whitespace when save
autocmd BufWritePre * :%s/\s\+$//e

" random thing for vsplit that I almost never use
nnoremap <silent> <C-s> :vsplit <CR>

" plugins
call plug#begin()
Plug 'fatih/vim-go'
Plug 'sheerun/vim-polyglot'
Plug 'nanotech/jellybeans.vim'

Plug 'ervandew/supertab'
call plug#end()

set background=dark
colorscheme jellybeans

let g:go_highlight_structs = -1
let g:go_highlight_methods = -1
let g:go_highlight_functions = -2
let g:go_highlight_operators = -1
let g:go_highlight_build_constraints = -1

let g:neocomplete#enable_at_startup = 1
