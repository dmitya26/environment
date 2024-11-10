let mapleader = ';'
set nocompatible
set noswapfile

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

"debugger
function! LLDBDebug()
	let filename = input("file: ")
	if !empty(filename)
		"terminal lldb a:filename 
		"split
		execute 'terminal lldb ' . filename
	else
		return
	endif
endfunction

"finding
" Note: The ':b' followed by a number command allows you to use vim buffer to hotswap files
set path+=**
set wildmenu " navigation shortcuts
nnoremap <leader>n :bn <cr>
nnoremap <leader>p :bp <cr>

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
Plug 'preservim/tagbar'
Plug 'jiangmiao/auto-pairs'
call plug#end()

inoremap <silent> <Tab> <C-n>

nnoremap <leader>t :CommandT<cr>
nnoremap <leader>w <C-w>w
nnoremap <leader>b :TagbarToggle<cr>
nnoremap <leader>f :find ~/Desktop<cr>

nnoremap <leader>d :call LLDBDebug()<cr>
tnoremap <leader>d <C-\><C-N>:q!<cr>

set background=dark
colorscheme wildcharm

set bs=indent,eol,start

let g:ycm_gopls_binary_path = expand('$GOPATH/bin/gopls')
