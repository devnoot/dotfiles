require('core.globals')
require('core.options')
require('core.commands')
require('core.keymaps')

-- Set up lazy.nvim
-- See https://github.com/folke/lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({

  { import = 'plugins.treesitter' },

  { import = 'plugins.nvim-tree' },

  { import = 'plugins.mason' },

  { import = 'plugins.lsp' },

  { import = 'plugins.cmp' },

  { import = 'plugins.telescope' },

  { import = 'plugins.undotree' },

  { import = 'plugins.barbar' },

  { import = 'plugins.emmet' },

  { import = 'plugins.easymotion' },

  { import = 'plugins.alpha' },

  { import = 'plugins.lspui' },

  { import = 'plugins.notify' },

  { import = 'plugins.which' },

  { import = 'plugins.trouble' },

--  -- 🧘 Distraction-free coding for Neovim
--  -- @url https://github.com/folke/zen-mode.nvim
--  'folke/zen-mode.nvim',
--
--  -- Seamless navigation between tmux panes and vim splits
--  -- @url https://github.com/christoomey/vim-tmux-navigator
--  'christoomey/vim-tmux-navigator',
--
--  -- A fancy, configurable, notification manager for NeoVim
--  -- @url https://github.com/rcarriga/nvim-notify
--  'rcarriga/nvim-notify',
--
--  -- Git integration for buffers
--  -- @url https://github.com/lewis6991/gitsigns.nvim
--  'lewis6991/gitsigns.nvim',
--
--  -- Vim plugin that displays tags in a window, ordered by scope
--  -- @url https://github.com/preservim/tagbar
--  'preservim/tagbar',
--
--
--  -- Automatically discover and "properly" update ctags files on save
--  -- @url https://github.com/craigemery/vim-autotag
--  'craigemery/vim-autotag',
--
--  --  🔥 No-nonsense floating terminal plugin for neovim 🔥
--  -- @url https://github.com/numtostr/FTerm.nvim
--  'numToStr/FTerm.nvim',
--
--  {
--    'akinsho/bufferline.nvim',
--    dependencies = {
--      'nvim-tree/nvim-web-devicons'
--    },
--  },
--
--
--  {
--    -- 🚦 A pretty diagnostics, references, telescope results, quickfix and location list to help you solve all the trouble your code is causing.
--    -- @url https://github.com/folke/trouble.nvim
--    'folke/trouble.nvim',
--    dependencies = {
--      'nvim-tree/nvim-web-devicons'
--    },
--  },

})
