return {

  'WhoIsSethDaniel/toggle-lsp-diagnostics.nvim',

  config = function()
    require('toggle_lsp_diagnostics').init()
  end,

  keys = {

    { '<leader>td', '<cmd>ToggleDiag<cr>', desc = 'Toggle LSP diagnostics' },

  },

}

