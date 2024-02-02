return {

  'luukvbaal/nnn.nvim',

  lazy = false,

  config = function() require("nnn").setup({
    explorer = {
      width = 32,
      tabs = false,
    }
  }) end,

  keys = {
    { '<leader>n', '<cmd>NnnExplorer<cr>', desc = 'Launch nnn explorer' },
  },

}
