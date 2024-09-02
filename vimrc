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
nnoremap <silent> <S-f> :bn <cr>
noremap <C-f> :find<space>

set nu rnu
set hlsearch " `:noh` to terminate the current search
set ruler

" remove whitespace when save
autocmd BufWritePre * :%s/\s\+$//e

" the cursor.
xnoremap <silent> <cr> "*y:silent! let searchTerm = '\V'.substitute(escape(@*, '\/'), "\n", '\\n', "g") <bar> let @/ = searchTerm <bar> echo '/'.@/ <bar> call histadd("search", searchTerm) <bar> set hls<cr>

" plugins
call plug#begin()
Plug 'fatih/vim-go' " Must-have Golang plugin.
Plug 'sheerun/vim-polyglot' " Syntax highlighting.
Plug 'ycm-core/YouCompleteMe' " Tab autocomplete.
Plug 'jiangmiao/auto-pairs' " A shockingly good plugin for pairing parentheses, quotes, etc...
Plug 'tpope/vim-fugitive' " An amazing git plugin.
Plug 'rust-lang/rust.vim' " Only for vim files.
Plug 'puremourning/vimspector' " Multi-language debugger.
Plug 'vim-airline/vim-airline' " A nice status bar plugin.

Plug 'wincent/command-t', {
			\ 'do': 'cd ruby/command-t/ext/command-t && ruby extconf.rb && make'
			\ } " Literally the most incredibly fuzzy finder in the entire history of vim.

call plug#end()

inoremap <silent> <Tab> <C-n>

colorscheme wildcharm

set bs=indent,eol,start

let g:ycm_gopls_binary_path = expand('$GOPATH/bin/gopls')
let g:vimspector_enable_mappings = 'HUMAN'
let g:CommandTPreferredImplementation='ruby'

nnoremap <M-f> :!echo 'tmux' <CR>
nnoremap f :CommandT <CR>
"nnoremap <silent> f :call vimspector#Launch() <CR>
