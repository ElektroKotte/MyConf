call plug#begin()
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-context'
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'nvim-treesitter/nvim-treesitter-refactor'
Plug 'majutsushi/tagbar'              " File overview for C/C++
Plug 'godlygeek/tabular'              " Crate tables by :Tab /<symbol> to tabularize based on symbol
Plug 'scrooloose/nerdtree'            " Support for nicer file browsing
Plug 'MattesGroeger/vim-bookmarks'    " mm - toggle bookmark on line
                                      " mi - add/edit/remove annotation
                                      " ma - show all bookmarks
Plug 'nvim-lua/completion-nvim'
Plug 'tpope/vim-fugitive'
Plug 'marko-cerovac/material.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

Plug 'wfxr/minimap.vim'
Plug 'sheerun/vim-polyglot'

if filereadable(expand('$HOME/myconf/local-plugins.vim'))
    source ~/myconf/local-plugins.vim
endif
call plug#end()
