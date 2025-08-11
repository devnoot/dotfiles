-- The neovim tabline plugin.
-- @url https://github.com/romgrk/barbar.nvim
return {

  'romgrk/barbar.nvim',

  dependencies = {
    'lewis6991/gitsigns.nvim',
    'nvim-tree/nvim-web-devicons',
  },

  init = function()
    vim.g.barbar_auto_setup = false
  end,

  lazy = false,

  opts = {

    icons = {
      buffer_index = true
    },

    -- Insert new buffers at the end of the tabs list. Default is to insert after the current buffer.
    insert_at_end = true,

    -- Increase the padding around the tabs. Default is 1
    maximum_padding = 1,
    minimum_padding = 1,

    -- Increase the maximum buffer name length. Default is 30
    maximumm_length = 50,

  },

  keys = {
    { '<leader>bx', '<cmd>BufferClose<cr>', silent = true, noremap = true, desc = 'Close buffer' },
    { '<leader>bn', '<cmd>BufferNext<cr>',  silent = true, noremap = true, desc = 'Next buffer' },
    { '<leader>bp', '<cmd>BufferPreviou<cr>',  silent = true, noremap = true, desc = 'Previous buffer' },
    { '<A-1>', '<cmd>BufferGoto 1<cr>', silent = true, noremap = true, desc = 'Go to buffer 1' },
    { '<A-2>', '<cmd>BufferGoto 2<cr>', silent = true, noremap = true, desc = 'Go to buffer 2' },
    { '<A-3>', '<cmd>BufferGoto 3<cr>', silent = true, noremap = true, desc = 'Go to buffer 3' },
    { '<A-4>', '<cmd>BufferGoto 4<cr>', silent = true, noremap = true, desc = 'Go to buffer 4' },
    { '<A-5>', '<cmd>BufferGoto 5<cr>', silent = true, noremap = true, desc = 'Go to buffer 5' },
    { '<A-6>', '<cmd>BufferGoto 6<cr>', silent = true, noremap = true, desc = 'Go to buffer 6' },
    { '<A-7>', '<cmd>BufferGoto 7<cr>', silent = true, noremap = true, desc = 'Go to buffer 7' },
    { '<A-8>', '<cmd>BufferGoto 8<cr>', silent = true, noremap = true, desc = 'Go to buffer 8' },
    { '<A-9>', '<cmd>BufferGoto 9<cr>', silent = true, noremap = true, desc = 'Go to buffer 9' },
    { '<A-0>', '<cmd>BufferLast<cr>', silent = true, noremap = true, desc = 'Go to last buffer' },
    { '<leader><leader>p', '<cmd>BufferPick<cr>', silent = true, noremap = true, desc = 'Buffer picker' },
  },

}
