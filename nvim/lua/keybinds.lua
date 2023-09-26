local setkey = vim.keymap.set
local map = vim.api.nvim_set_keymap
--local lsp_ui = require('LspUI').api

-- Window & Misc
setkey('n', '<space>',      '', { noremap = true, silent = true })
setkey('n', '<leader>n',    ':NvimTreeToggle<CR>')
setkey('n', '<leader>z',    ':ZenMode<CR>')
setkey('n', '<c-h>',        '<c-w>h')
setkey('n', '<c-j>',        '<c-w>j')
setkey('n', '<c-k>',        '<c-w>k')
setkey('n', '<c-l>',        '<c-w>l')
setkey('n', '<F8>',         ':TagbarToggle<CR>')
setkey("i", "jk",           "<Esc>")

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

-- Meson
setkey('n', '<F12>', ':Mason<CR>')

-- barbar.nvim
local opts = { noremap = true, silent = true }
-- Move to previous/next
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<Leader>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
map('n', '<Leader>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
map('n', '<Leader>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
map('n', '<Leader>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)
