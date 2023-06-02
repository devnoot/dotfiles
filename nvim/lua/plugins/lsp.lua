-- Setup language servers.
local lspconfig = require 'lspconfig'
local coq = require 'coq'
local setkey = vim.keymap.set

lspconfig.pyright.setup(coq.lsp_ensure_capabilities{})
lspconfig.tsserver.setup(coq.lsp_ensure_capabilities{})
lspconfig.svelte.setup(coq.lsp_ensure_capabilities{})
lspconfig.tailwindcss.setup(coq.lsp_ensure_capabilities{})
lspconfig.dockerls.setup(coq.lsp_ensure_capabilities{})
lspconfig.docker_compose_language_service.setup(coq.lsp_ensure_capabilities{})
lspconfig.emmet_ls.setup(coq.lsp_ensure_capabilities{})
lspconfig.eslint.setup(coq.lsp_ensure_capabilities{})
lspconfig.graphql.setup(coq.lsp_ensure_capabilities{})
lspconfig.jsonls.setup(coq.lsp_ensure_capabilities{})

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }

    -- Rename symbol
    setkey('n', '<Leader>rn',   vim.lsp.buf.rename, opts)

    -- Workspaces
    setkey('n', '<Leader>wa', vim.lsp.buf.add_workspace_folder, opts)
    setkey('n', '<Leader>wr', vim.lsp.buf.remove_workspace_folder, opts)

    -- Go to declaration/def/implementation/etc.
    setkey('n', 'gD',           vim.lsp.buf.declaration, opts)
    setkey('n', 'gd',           vim.lsp.buf.definition, opts)
    setkey('n', 'gr',           vim.lsp.buf.references, opts)
    setkey('n', 'K',            vim.lsp.buf.hover, opts)
    setkey('n', 'gi',           vim.lsp.buf.implementation, opts)
    setkey('n', '<C-k>',        vim.lsp.buf.signature_help, opts)
    setkey('n', '<Leader>D',    vim.lsp.buf.type_definition, opts)

    -- List the workspace folders
    setkey('n', '<Leader>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)

    -- Format code
    setkey('n', '<Leader>rf', function()
      vim.lsp.buf.format { async = true }
    end, opts)

  end,
})

