" Core config

set nocompatible             " disable old vi compatibility
set hidden
set cmdheight=2              " increase the command line height
set updatetime=750           " decrease update time
set shortmess+=c             " don't pass messages to |ins-completion-menu|
set number                   " show line numbers
set showmatch                " show matching
set hlsearch                 " highlight search
set incsearch                " incremental search
set tabstop=4                " spacing
set softtabstop=4
set shiftwidth=4
set expandtab                " convert tabs to spaces
set smartindent
set autoindent               " new lines indent the same as previous
set ttyfast                  " faster scrolling
set noswapfile               " don't create swap files
set nobackup                 " don't create backup files
set nowritebackup
set splitbelow               " better default splitting
set splitright
set mouse=a                  " enable the mouse
set termguicolors
set t_Co=256
set background=dark
"set cursorline              " highlight cursor column and line
"set cursorcolumn

syntax enable                " enable syntax highlighting

let g:python3_host_prog = "/usr/bin/python"
let g:javascript_plugin_jsdoc = 1
let g:typescript_compiler_binary = 'tsc'
let g:fzf_preview_window = ['right:50%', 'ctrl-/']
let g:fzf_tags_command = 'ctags -R'
let g:airline_theme = 'base16_google'
let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-html', 'coc-css', 'coc-tsserver', 'coc-docker', 'coc-emmet', 'coc-fzf-preview', 'coc-sh', 'coc-spell-checker', 'coc-sql', 'coc-yaml', 'coc-lua']
let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1

let $FZF_DEFAULT_COMMAND = 'ag -g ""'

source $HOME/.config/nvim/keybinds.vim

" Remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

autocmd FileType scss setl iskeyword+=@-@

" Load plugins and configs
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/vim-airline.vim
source $HOME/.config/nvim/zen-mode.nvim
source $HOME/.config/nvim/coc.vim

" Set up nvim-tree
lua require'nvim-tree'.setup {}

" set the colorscheme
colorscheme gruvbox

