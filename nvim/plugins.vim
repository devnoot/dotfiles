" Load plugins
call plug#begin(stdpath('data') . '/plugged')
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch':'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'preservim/tagbar'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'folke/zen-mode.nvim'
Plug 'scrooloose/nerdcommenter'
Plug 'easymotion/vim-easymotion'
Plug 'mhinz/vim-startify'
Plug 'google/vim-colorscheme-primary'
Plug 'craigemery/vim-autotag'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'morhetz/gruvbox'
call plug#end()
