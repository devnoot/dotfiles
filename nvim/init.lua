local cmd = vim.cmd         -- using cmd and opts will make everything
local opts = vim.o          -- much more readable.
local globals = vim.g
local autocmd = vim.api.nvim_create_autocmd
local call = vim.call
local Plug = vim.fn['plug#']

opts.nocampatible = false	-- disable old vi compatibilityjk
opts.hidden = true
opts.cmdheight = 2		    -- increase the command line height
opts.updatetime = 750		-- decrease update time
opts.number = true		    -- show line numbers
opts.showmatch = true		-- show matches
opts.incsearch = true		-- incremental searching
opts.tabstop = 4		    -- tab config
opts.softtabstop = 4
opts.shiftwidth = 4
opts.expandtab = true		-- convert tabs to spaces
opts.smartindent = true
opts.autoindent = true	    -- new lines indent the same as previous
opts.ttyfast = true		    -- faster scrolling
opts.noswapfile = true	    -- don't create swap files
opts.nowritebackup = true	-- don't write backup files
opts.splitbelow = true	    -- more natural splitting
opts.splitright = true
opts.mouse = 'a'			    -- enable the mouse
opts.termguicolors = true	-- enable truecolor
opts.t_Co = 256
opts.cursorline = true	    -- highlight the current line
opts.signcolumn = "yes"     -- Always show the signcolumn, otherwise it would shift the text each time diagnostics appeared/became resolved

cmd("syntax enable")	    -- enable syntax highlighting
cmd("set shortmess+=c")	    -- don't pass messages to |ins-completion-menu|

globals.mapleader = ' '

globals.python3_host_prog = "/usr/bin/python3"
globals.javascript_plugin_jsdoc = 1
globals.typescript_compiler_binary = "tsc"
globals.fzf_preview_window = {
	'right:50%', 'ctrl-/'
}
globals.fzf_tags_command = 'ctags -R'
globals.coc_global_extensions = {
	'coc-json', 'coc-git', 'coc-html', 'coc-css',
	'coc-tsserver', 'coc-docker', 'coc-emmet', 'coc-fzf-preview',
	'coc-sh', 'coc-spell-checker', 'coc-sql', 'coc-yaml',
	'coc-lua'
}
globals.EasyMotion_do_mapping = 0	-- Disable default mappings
globals.EasyMotion_smartcase = 1

--let $FZF_DEFAULT_COMMAND = 'ag -g ""'

-- Remove trailing whitespace on save
autocmd("BufWritePre", {
	pattern = "",
	command = "%s/\\s\\+$//e"
})

autocmd("FileType", {
	pattern = "scss",
	command = "setl iskeyword+=@-@"
})


--[[
-- Load plugins using Vim-plug.
--]]

call('plug#begin', '~/.config/nvim/plugged')
Plug('vim-airline/vim-airline')
Plug('neoclide/coc.nvim', {branch = 'release'})
Plug('junegunn/fzf')
Plug('preservim/tagbar')
Plug('pangloss/vim-javascript')
Plug('leafgarland/typescript-vim')
--Plug 'vim-airline/vim-airline-themes'
Plug('folke/zen-mode.nvim')
Plug('scrooloose/nerdcommenter')
Plug('easymotion/vim-easymotion')
Plug('mhinz/vim-startify')
--Plug 'google/vim-colorscheme-primary'
Plug('craigemery/vim-autotag')
Plug('kyazdani42/nvim-web-devicons')
Plug('kyazdani42/nvim-tree.lua')
--Plug 'morhetz/gruvbox'
Plug('christoomey/vim-tmux-navigator')
call('plug#end')

require('keybinds')
require('coc')
require('nvim-tree').setup()
require("zen-mode").setup()
