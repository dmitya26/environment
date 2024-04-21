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

set laststatus=2
set statusline+=\ %F\ %M\ %Y\ %R
set statusline+=%{\"\\ua0\"}
set statusline+=\row:\ %l\ col:\ %c

set nu rnu
set hlsearch " `:noh` to terminate the current search
set ruler

" linter
autocmd FileType python setlocal makeprg=pylint\ --errors-only
autocmd FileType javascript setlocal makeprg=jslint\ %
autocmd BufWritePost *.py, *.js silent make! <afile> | silent redraw!
autocmd QuickFixCmdPost [^l]* cwindow

" remove whitespace when save
autocmd BufWritePre * :%s/\s\+$//e

" random thing for vsplit that I almost never use
nnoremap <silent> <C-s> :vsplit <CR>

" plugins
call plug#begin()
Plug 'fatih/vim-go'
Plug 'sheerun/vim-polyglot'
Plug 'ku1ik/vim-sunburst'
call plug#end()

set background=dark
colorscheme sunburst

let g:go_highlight_structs = 1
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
