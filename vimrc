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

set completeopt=menuone,noinsert,noselect
set tags=~/tags

"debugger
function! LLDBDebug()
	let filename = input("file: ")
	if !empty(filename)
		execute 'terminal lldb ' . filename
	else
		return
	endif
endfunction

"finding
function! Finding()
	echo join(glob('*', 0, 1), ", ")

	let dirname = input("file/dir: ")
	if !empty(dirname)
		execute 'find ' . dirname 
	else
		return
	endif
endfunction

" visualblock -> return -> hlsearch everything that was in the visual block.
"function! HLVisual()
"	normal! gv"xy
"	let @/ = getreg('x')
"	call feedkeys("/\<CR>")
"	set hls
"endfunction

" tab autocomplete
function! Autocomplete()
	let l:before = getline('.')[col('.')-2]
	if l:before =~# '\s' || col('.') == 1
		return "\<Tab>"
	elseif pumvisible() 
		return "\<C-n>"
	else
		return "\<C-n>"
  	endif
endfunction

" Note: The ':b' followed by a number command allows you to use vim buffer to hotswap files
set path+=**
set wildmenu " navigation shortcuts
nnoremap <leader>n :bn <cr>
nnoremap <leader>p :bp <cr>

set nu rnu
set hlsearch " `:noh` to terminate the current search
set ruler

" Plugins! (I mainly only use plugins for the stuff that's too complicated for
" me to make myself). 
call plug#begin()
Plug 'fatih/vim-go'
Plug 'preservim/tagbar'
call plug#end()

" Remaps for enclosers.
inoremap {<cr> {<cr>}<Esc>O

" Tons of random remaps (mostly with leaderkeys).
inoremap <silent> <Tab> <C-R>=Autocomplete() <cr>
nnoremap <leader>f :call Finding()<cr>
nnoremap <leader>w <C-w>w
tnoremap <leader>w <C-w>w
nnoremap <leader>t :TagbarToggle<cr>
nnoremap <leader>d :call LLDBDebug()<cr>
tnoremap <leader>d <C-\><C-N>:q!<cr>
"xnoremap <cr> :call HLVisual()<cr>

" More graphical configs.
set background=dark
colorscheme zaibatsu

set bs=indent,eol,start

" stautsline
hi StatusLine ctermbg=black ctermfg=white
set laststatus=2
set statusline+=\ %F\ %Y
set statusline+=%{\"\\ua0\"}
set statusline+=\row:\ %l\ col:\ %c
set statusline+=%{\"\\ua0\"}

" 'v' in netrw will open the file in vertical preview.
let g:netrw_banner=0
let g:netrw_browser_split=4
let g:netrw_altv=1
let g:netrw_lifestyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
