" **/**/gc will make me have to approve every search and replace.
" Shift-3 highlights all instances of the character the cursor is
" over.
" Ctrl-] will find all instances of a thing in tags and add it to args.

let mapleader = ';'

set nocompatible
set noswapfile

filetype on
filetype indent on
filetype plugin on

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
set complete=.,b,t,u,i

function! Comment()
	let l:filetype = &filetype

	if l:filetype == 'python'
		'<,'>s/^/# /
 	elseif l:filetype == 'asm'
 		'<,'>s/^/; /
 	elseif l:filetype == 'vim'
		'<,'>s/^/" /
	else
		'<,'>s/^/\/\/ /
	endif
endfunction

set path+=**
set wildmenu
set nu rnu
set hlsearch
set incsearch
set ruler

" Plugins! (I mainly only use plugins for the stuff that's too complicated for
" me to make myself).
call plug#begin()
Plug 'fatih/vim-go'
Plug 'preservim/tagbar'
Plug 'girishji/vimcomplete'
call plug#end()

inoremap {<cr> {<cr>}<Esc>O

let g:vimcomplete_tab_enable = 1

inoremap <buffer><expr> <tab>   g:VimCompleteTab() ?? "{rhs}"
inoremap <buffer><expr> <s-tab> g:VimCompleteSTab() ?? "{rhs}"
nnoremap <leader>t :TagbarToggle<cr>
nnoremap <leader>w <C-w>
vnoremap <leader>b :<C-u>call Comment()<CR>

nnoremap <leader>n :cnext<cr>
nnoremap <leader>p :cprev<cr>
nnoremap <leader>c :cclose<cr>

colorscheme zaibatsu
hi normal ctermbg=black
set background=dark

set bs=indent,eol,start

autocmd BufWritePre * if &filetype != 'markdown' | %s/\s\+$//e | endif

hi StatusLine ctermbg=black ctermfg=white
set laststatus=2
set statusline+=\ %F\ %Y
set statusline+=%{\"\\ua0\"}
set statusline+=\row:\ %l\ col:\ %c
set statusline+=%{\"\\ua0\"}
