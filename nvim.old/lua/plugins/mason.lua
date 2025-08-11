return {

    'williamboman/mason.nvim',

    config = function ()
      require'mason'.setup{}
      require'mason-lspconfig'.setup {
        ensure_installed = { 'lua_ls' },
      }
      require'mason-lspconfig'.setup_handlers{}
    end,

    dependencies = {
      'neovim/nvim-lspconfig',
      'williamboman/mason-lspconfig.nvim'
    },

    keys = {
      { '<F12>', '<cmd>Mason<cr>', desc = 'Mason' }
    },

}

