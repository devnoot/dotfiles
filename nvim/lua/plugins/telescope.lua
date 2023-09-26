-- Find, Filter, Preview, Pick. All lua, all the time.
-- @url https://github.com/nvim-telescope/telescope.nvim

return {

  'nvim-telescope/telescope.nvim',

  branch = '0.1.x',

  dependencies = {
    'nvim-lua/plenary.nvim',
    'rcarriga/nvim-notify'
  },

  config = function()
    require('telescope').setup{}
    require('telescope').load_extension('notify')
  end,

  keys = {

    { '<leader>ff', '<cmd>Telescope find_files<cr>', desc = 'Find Files' },
    { '<leader>fg', '<cmd>Telescope live_grep<cr>', desc = 'Live Grep' },
    { '<leader>fb', '<cmd>Telescope buffers<cr>', desc = 'Find Buffers'  },
    { '<leader>fh', '<cmd"Telescope help_tags<cr>', desc = 'Find Help tags' },

  },

}
