-- A file explorer tree for neovim written in lua
-- @url https://github.com/nvim-tree/nvim-tree.lua

return {

  'nvim-tree/nvim-tree.lua',

  init = function ()
    update_cwd = true
  end,

  config = function ()
    require('nvim-tree').setup()
  end,

  keys = {
    { '<leader>n', '<cmd>NvimTreeToggle<cr>', desc = "Toggle File Browser" },
  },

  dependencies = {
    -- lua `fork` of vim-web-devicons for neovim
    -- @url https://github.com/nvim-tree/nvim-web-devicons
    { 'nvim-tree/nvim-web-devicons' }
  },

}

