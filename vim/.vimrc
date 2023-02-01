
call plug#begin()
 "-------------------=== Code Navigation ===-------------
Plug 'preservim/nerdtree'
Plug 'majutsushi/tagbar'

"-------------------- themes 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'powerline/powerline'
Plug 'flazz/vim-colorschemes'

"---------------- language support
Plug 'rykka/riv.vim'
Plug 'mitsuhiko/vim-sparkup'
Plug 'valloric/youcompleteme'
Plug 'python-mode/python-mode'
Plug 'vim-syntastic/syntastic'


call plug#end()

syntax on  
" ------------- nerdtree short cut  ----------------
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"you complete me
set encoding=utf-8
let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/youcompleteme/third_party/ycmd/.ycm_extra_conf.py'
set t_Co=256                                " set 256 colors
"colorscheme monokai
set background=dark
colorscheme papercolor

set number
set tabstop=4                               " 4 whitespaces for tabs visual presentation
set shiftwidth=4                            " shift lines by 4 spaces
set smarttab                                " set tabs for a shifttabs logic
set expandtab                               " expand tabs into spaces
set autoindent                              " indent when moving to the next line while writing code

set cursorline                              " shows line under the cursor's line
set showmatch                               " shows matching part of bracket pairs (), [], {}

set clipboard=unnamed                       " use system clipboard
" Additional mappings for Esc (useful for MacBook with touch bar)
"inoremap jj <Esc>
"inoremap jk <Esc>
"=====================================================
" AirLine settings
"=====================================================
let g:airline_theme='badwolf'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
"let g:airline#extensions#tabline#formatter='unique_tail'
"let g:airline_powerline_fonts=1

"=====================================================
"" TagBar settings
"=====================================================
let g:tagbar_autofocus=0
let g:tagbar_width=42
autocmd BufEnter *.py :call tagbar#autoopen(0)

"=====================================================
"" NERDTree settings
"=====================================================
let NERDTreeIgnore=['\.pyc$', '\.pyo$', '__pycache__$']     " Ignore files in NERDTree
let NERDTreeWinSize=40
autocmd VimEnter * if !argc() | NERDTree | endif  " Load NERDTree only if vim is run without arguments
nmap " :NERDTreeToggle<CR>
