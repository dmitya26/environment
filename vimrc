set nocompatible
filetype on
filetype indent on

"visual configs
set scrolloff=10
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

set laststatus=2
set statusline+=\ %F\ %M\ %Y\ %R
set statusline+=%{\"\\ua0\"}
set statusline+=\row:\ %l\ col:\ %c

set nu rnu
set hlsearch " `:noh` to terminate the current search
set ruler

" linter
silent! autocmd FileType python setlocal makeprg=ruff\ check

silent! autocmd BufWritePost *.py silent make! <afile> | silent redraw!
silent! autocmd QuickFixCmdPost [^l]* cwindow

" remove whitespace when save
autocmd BufWritePre * :%s/\s\+$//e

" random thing for vsplit that I almost never use
nnoremap <silent> <C-s> :vsplit <CR>

" plugins
call plug#begin()
Plug 'fatih/vim-go'
Plug 'sheerun/vim-polyglot'
Plug 'rstacruz/vim-closer'
Plug 'nanotech/jellybeans.vim'
call plug#end()

set background=dark
colorscheme jellybeans

let g:go_highlight_structs = 1
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
