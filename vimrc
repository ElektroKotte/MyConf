" Vundle setup
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Rust plugins
Plugin 'rust-lang/rust.vim'
Plugin 'racer-rust/vim-racer'

" C/C++ plugins
Plugin 'rip-rip/clang_complete'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/CCTree'

" Additional text object
Plugin 'vim-scripts/argtextobj.vim'

" Syntax highlight
Plugin 'glensc/vim-syntax-lighttpd'

" Align text
Plugin 'godlygeek/tabular'

" Git stuff
Plugin 'tpope/vim-fugitive'

" Linting
Plugin 'vim-syntastic/syntastic'

" File handling
Plugin 'scrooloose/nerdtree'

call vundle#end()

filetype plugin indent on

syntax on               " Syntax highlighting
colorscheme koehler

set autoread                        " Don't remember what this does
set backspace=indent,eol,start      " Don't remember what this does...
set clipboard=unnamedplus           " Use the system clipboard
set completeopt+=longest,preview    " Only complete common match, display extra information
set incsearch                       " Search as you type
set modeline                        " Read the mode line at the beginning of the file
set mouse=a                         " Activate mouse support
set noswapfile                      " Don't create swap files
set nowrap                          " Don't wrap long lines
set number                          " Show line numbers
set relativenumber                  " Show relative numbers
set showcmd                         " Let last executed command linger for reference
set showmatch                       " Show matching <([{
set smartcase                       " smart case when searching
set wildmenu                        " Show possible matches
set wildmode=longest,list,full      " Order of matching

" Check if file has been modified outside of NeoVim
autocmd CursorHold * checktime

" vim-racer configuration
set hidden
let g:racer_cmd = "racer"
let g:racer_experimental_completer = 1

" Syntastic configuration
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_rust_checkers = ['cargo']

" Enable clang-format wih Ctrl+k
map <C-K> :pyf ~/.vim/clang-format.py<cr>
imap <C-K> <c-o>:pyf ~/.vim/clang-format.py<cr>

inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-Space>
noremap <leader>cr :pyf /usr/share/clang/clang-rename.py<cr>

" Map alt+d to delete word forward and alt+b to delete word backwar
" in insertion mode
inoremap <M-d> <C-o>de
inoremap <M-b> <C-o>db

" Add some extra inforamtion to the status line
set statusline=%<%f%h%m%r%=%b\ 0x%B\ \ %l,%c%V\ %P
set laststatus=2

function DevMode()
    set expandtab
    set smarttab
    set ts=4
    set tw=100
    set sw=4
    set ss=4
    set cin
endfunction
