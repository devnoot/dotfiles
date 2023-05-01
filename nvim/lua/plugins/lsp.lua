-- Setup language servers.
local lspconfig = require 'lspconfig'
local coq = require 'coq'

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

-- Mappings.
-- See :help vim.diagnostic.* for more.
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

-- Only set keymaps after lsp has loaded.
vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        -- Enable completion triggered by <c-x><c-o>
        vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'
        -- Buffer local mappings.
        -- See :help vim.lsp.* for more.
        local opts = { buffer = ev.buf }
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
        vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
        vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
        vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
        vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
        vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
        vim.keymap.set('n', '<space>f', function()
            vim.lsp.buf.format { async = true }
        end, opts)
    end,
})
