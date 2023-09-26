-- Mappings that are not tied to any specific plugin should go here.
local setkey = vim.keymap.set
local map = vim.api.nvim_set_keymap

setkey('n', '<space>',      '', { noremap = true, silent = true })

-- vi like window movement with <Ctrl> + hjkl
setkey('n', '<c-h>',        '<c-w>h')
setkey('n', '<c-j>',        '<c-w>j')
setkey('n', '<c-k>',        '<c-w>k')
setkey('n', '<c-l>',        '<c-w>l')
setkey("i", "jk",           "<Esc>")

-- Turn off highlighting 
setkey('n', '<leader><enter>', ':noh<CR>')

-- Splits
setkey('n', '<leader>v',    ':vsp<CR>')
setkey('n', '<leader>x',    ':sp<CR>')

-- Goto Diagnostics
setkey('n', 'gn',           vim.diagnostic.goto_next)
setkey('n', 'gp',           vim.diagnostic.goto_prev)
setkey('n', 'gf',           vim.diagnostic.open_float)

-- Reload vim
setkey('n', '<C-r>',        '<cmd>lua reload_nvim_conf()<CR>')
