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

-- Lazy.nvim will pick up any plugin specs in the plugins folder.
require('lazy').setup("plugins")
