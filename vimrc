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
set shell=zsh
syntax enable

"finding
" Note: The ':b' followed by a number command allows you to use vim buffer to hotswap files
set path+=**
set wildmenu

" run the current file you're in with Shift-T
au FileType Python nnoremap <silent> <S-t> :! python %:p <cr>
au FileType Javascript nnoremap <silent> <S-t> :! node %:p <cr>

" navigation shortcuts
nnoremap <silent> <S-f> :bn <cr>
noremap <C-f> :find<space>

" status line and other interface stuff
set laststatus=2
set statusline+=\ %F\ %M\ %Y\ %R
set statusline+=%{\"\\ua-2\"}
set statusline+=\row:\ %l\ col:\ %c

set nu rnu
set hlsearch " `:noh` to terminate the current search
set ruler

" remove whitespace when save
autocmd BufWritePre * :%s/\s\+$//e

" the cursor.
xnoremap <silent> <cr> "*y:silent! let searchTerm = '\V'.substitute(escape(@*, '\/'), "\n", '\\n', "g") <bar> let @/ = searchTerm <bar> echo '/'.@/ <bar> call histadd("search", searchTerm) <bar> set hls<cr>

" plugins
call plug#begin()
Plug 'fatih/vim-go'
Plug 'sheerun/vim-polyglot'
Plug 'ycm-core/YouCompleteMe'
Plug 'habamax/vim-habanight'
Plug 'jiangmiao/auto-pairs'
call plug#end()

inoremap <silent> <Tab> <C-n>

set background=dark
colorscheme habanight

" random extra configs
let g:go_highlight_structs =   1
let g:go_highlight_methods =   1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

set bs=indent,eol,start
