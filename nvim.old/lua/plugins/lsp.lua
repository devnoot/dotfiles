-- Quickstart configs for Nvim LSP
-- @url https://github.com/neovim/nvim-lspconfig

return {

  'neovim/nvim-lspconfig',

  dependencies = {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
  },

  lazy = false,

  cmd = {'LspInfo', 'LspInstall', 'LspUninstall'},

  event = {'BufReadPost', 'BufNewFile'},

  config = function ()
    local lsp = require('lspconfig')

    vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(
      vim.lsp.handlers.hover,
      {border = 'rounded'}
    )

    vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(
    vim.lsp.handlers.signature_help,
      {border = 'rounded'}
    )

    lsp.ts_ls.setup{}
    lsp.lua_ls.setup{}
    lsp.volar.setup{}

--    vim.api.nvim_create_autocmd('LspAttach', {
--
--      group = vim.api.nvim_create_augroup('UserLspConfig', {}),
--
--    })
  end,

  keys = {
    {'<leader>e', vim.diagnostic.open_float, desc = 'Open float'},
    {'[d', vim.diagnostic.goto_prev, desc = 'Go to prev'},
    {']d', vim.diagnostic.goto_next, desc = 'Go to next'},
    {'<leader>q', vim.diagnostic.setloclist, desc = 'Add buffer diagnostics to the location list'},
    {'<c-s>', vim.lsp.buf.signature_help, desc = 'Signature help'}
  },

}
