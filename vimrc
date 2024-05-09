" note to self : 'n' in normal mode can be used to cycle through hlserach results
" 'e' will move to the end of the current word.
" 'r' is going to replace the current character.
" '~' in normal mode will make an uppercase character into a lowercase character, and a lowercase character into an uppercase character.
filetype on
filetype indent on

" don't allow colorschemes to set a background color
highlight Normal ctermbg=black
highlight nonText ctermbg=black

"visual configs
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

set laststatus=0
set statusline+=\ %F\ %M\ %Y\ %R
set statusline+=%{\"\\ua-2\"}
set statusline+=\row:\ %l\ col:\ %c

set nu rnu
set hlsearch " `:noh` to terminate the current search
set ruler

" linter
autocmd FileType python setlocal makeprg=ruff\ check
autocmd FileType c setlocal makeprg=cppcheck\ --enable=all\ %

autocmd BufWritePost *.py,*.c,*.h silent make! <afile> | silent redraw!
autocmd QuickFixCmdPost [^l]* cwindow

" remove whitespace when save
autocmd BufWritePre * :%s/\s\+$//e

" random thing for vsplit that I almost never use
nnoremap <silent> <C-s> :vsplit <CR>

" rlly cool for urls `gx while visual on a url`

"remember this %s/old/replace
" If you just do hlsearch, then you can do %//replace, and it will replace the thing that was hlsearched.
"
" remember, if you have a filename in a file, highlight it and do 'gf' to
" enter the file and use carrot to go back.
"
" You can use <num>k to move a certain amount up. so doing something 41k can
" make you go 41 lines up
"
" 'ga' can tell you about the character you're currently on
"
" when in normal mode, '0' goes to go the beginning of the line, and '$' goes
" to the end of the line. 'shift-g' goes to the end of the file, while gg goes
" to the beginning of the file
"
" 'Shift-o' will create a new line above the cursor, and 'o' will create a new line below
" the cursor.
xnoremap <silent> <cr> "*y:silent! let searchTerm = '\V'.substitute(escape(@*, '\/'), "\n", '\\n', "g") <bar> let @/ = searchTerm <bar> echo '/'.@/ <bar> call histadd("search", searchTerm) <bar> set hls<cr>

" plugins
call plug#begin()
Plug 'fatih/vim-go'
Plug 'sheerun/vim-polyglot'
Plug 'ycm-core/YouCompleteMe'
Plug 'vim-python/python-syntax'
Plug 'habamax/vim-habanight'
call plug#end()

:command Ranger !ranger .
inoremap <silent> <Tab> <C-n>

"set background=dark
set background=dark
colorscheme habanight

let g:go_highlight_structs =   1
let g:go_highlight_methods =   1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:python_highlight_all = 1
