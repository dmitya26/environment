let mapleader = ';'
set nocompatible
set noswapfile

filetype on
filetype indent on
filetype plugin on

"visual configs
set title
set scrolloff=9
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set cmdheight=1
set cursorline
syntax enable

set tags=~/tags
set completeopt=menuone,noinsert,noselect
" tab autocomplete
function! Autocomplete()
	let l:before = getline('.')[col('.')-2]
	if l:before =~# '\s' || col('.') == 1
		return "\<Tab>"
	elseif pumvisible()
		return "\<C-n>"
	else
		return "\<C-x>\<C-]>"
 	endif
endfunction

function! HLVisual()
	normal! gv"xy
	let @/ = getreg('x')
	call feedkeys("/\<CR>")
	set hls
endfunction

" Note: The ':b' followed by a number command allows you to use vim buffer to hotswap files
set path+=**
set wildmenu " navigation shortcuts
nnoremap <leader>n :bn <cr>
nnoremap <leader>p :bp <cr>

set nu rnu
set hlsearch " `:noh` to terminate the current search
set incsearch
set ruler

" Plugins! (I mainly only use plugins for the stuff that's too complicated for
" me to make myself).
call plug#begin()
Plug 'fatih/vim-go'
call plug#end()

" Remaps for enclosers.
inoremap {<cr> {<cr>}<Esc>O

" Tons of random remaps (mostly with leaderkeys).
xnoremap <cr> :call HLVisual()<cr>
inoremap <silent> <Tab> <C-R>=Autocomplete() <cr>
nnoremap <leader>f :find<space>

" More graphical configs.
colorscheme sorbet
hi normal ctermbg=black
set background=dark

set bs=indent,eol,start

autocmd BufWritePre * if &filetype != 'markdown' | %s/\s\+$//e | endif

" stautsline
hi StatusLine ctermbg=black ctermfg=white
set laststatus=2
set statusline+=\ %F\ %Y
set statusline+=%{\"\\ua0\"}
set statusline+=\row:\ %l\ col:\ %c
set statusline+=%{\"\\ua0\"}
