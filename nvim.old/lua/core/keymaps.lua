-- Mappings that are not tied to any specific plugin should go here.
local setkey = vim.keymap.set
local map = vim.api.nvim_set_keymap

setkey('n', '<space>',      '', { noremap = true, silent = true })

-- vi like window movement with <Ctrl> + hjkl
setkey('n', '<c-h>',        '<c-w>h', { desc = 'Move LEFT' })
setkey('n', '<c-j>',        '<c-w>j', { desc = 'Move DOWN' })
setkey('n', '<c-k>',        '<c-w>k', { desc = 'Move UP' })
setkey('n', '<c-l>',        '<c-w>l', { desc = 'Move RIGHT' })
setkey("i", "jk",           "<Esc>", { desc = 'Exit INSERT mode' })

-- Turn off highlighting
setkey('n', '<leader><enter>', ':noh<CR>', { desc = 'Clear highlights' })

-- Splits
setkey('n', '<leader>;',    ':vsp<CR>', { desc = 'Split vertically' })
setkey('n', '<leader>%',    ':sp<CR>', { desc = 'Split horizontally' })

-- Reload vim
setkey('n', '<C-r>',        '<cmd>lua reload_nvim_conf()<CR>')
