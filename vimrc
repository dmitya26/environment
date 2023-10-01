" visual configs
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
filetype indent on
colorscheme slate
syntax enable
filetype on

set laststatus=2
set statusline+=\ %F\ %M\ %Y\ %R
set statusline+=%{\"\\ua0\"}
set statusline+=\row:\ %l\ col:\ %c

set nu
set hlsearch " `:noh` to terminate the current search
set cursorline
set ruler

" autocommands
autocmd BufWritePre * :%s/\s\+$//e

" general keybinds keybinds

inoremap { {<CR>}<Esc>ko
inoremap ( ()<Esc>ha
inoremap <expr> ) getline('.')[col('.')-1]==')' ? '<c-g>U<right>' : ')'

inoremap <C-d> <Esc>
inoremap <C-_> //<space>

nnoremap F ^
nnoremap f w
nnoremap B $

nnoremap <silent> <C-s> :vsplit <CR>
