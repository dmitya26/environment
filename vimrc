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
nnoremap <S-t> :bn <cr>
nnoremap  <S-f> :find ~/Desktop<cr>

set nu rnu
set hlsearch " `:noh` to terminate the current search
set ruler

" remove whitespace when save
autocmd BufWritePre * :%s/\s\+$//e

" the cursor.
xnoremap <silent> <cr> "*y:silent! let searchTerm = '\V'.substitute(escape(@*, '\/'), "\n", '\\n', "g") <bar> let @/ = searchTerm <bar> echo '/'.@/ <bar> call histadd("search", searchTerm) <bar> set hls<cr>

" plugins
call plug#begin()
Plug 'preservim/tagbar'
Plug 'ycm-core/YouCompleteMe'
"Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'puremourning/vimspector'
Plug 'vim-airline/vim-airline'
Plug 'fatih/vim-go'
call plug#end()

inoremap <silent> <Tab> <C-n>

colorscheme wildcharm

set bs=indent,eol,start

let g:ycm_gopls_binary_path = expand('$GOPATH/bin/gopls')
let g:vimspector_enable_mappings = 'HUMAN'
let g:CommandTPreferredImplementation='ruby'

nnoremap <M-f> :!echo 'tmux' <CR>
nnoremap t :TagbarToggle <CR>
nnoremap ; <C-w>
