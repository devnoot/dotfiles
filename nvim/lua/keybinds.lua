local setkey = vim.keymap.set

-- Window & Misc
setkey('n', '<space>',      '', { noremap = true, silent = true })
setkey('n', '<leader>n',    ':NvimTreeToggle<CR>')
setkey('n', '<leader>]',    ':bn<CR>')
setkey('n', '<leader>[',    ':bp<CR>')
setkey('n', '<leader>z',    ':ZenMode<CR>')
setkey('n', '<c-h>',        '<c-w>h')
setkey('n', '<c-j>',        '<c-w>j')
setkey('n', '<c-k>',        '<c-w>k')
setkey('n', '<c-l>',        '<c-w>l')
setkey('n', '<F8>',         ':TagbarToggle<CR>')
setkey("i", "jk",           "<Esc>")

-- Easymotion
setkey('n', '<leader><leader>f',  '<Plug>(easymotion-bd-f)')
setkey('n', '<leader><leader>l',  '<Plug>(easymotion-bd-jk)')
setkey('n', '<leader><leader>w',  '<Plug>(easymotion-bd-w)')
setkey('n', '<leader><leader>s',  '<Plug>(easymotion-s2)')
setkey('n', '<leader><leader>n',  '<Plug>(easymotion-next)')
setkey('n', '<leader><leader>n',  '<Plug>(easymotion-prev)')
setkey('n', '<leader><leader>j',  '<Plug>(easymotion-j)')
setkey('n', '<leader><leader>k',  '<Plug>(easymotion-k)')
setkey('n', '/',            '<Plug>(easymotion-sn)')
setkey('o', '/',            '<Plug>(easymotion-tn)')

-- Splits
setkey('n', '<leader>v',    ':vsp<CR>')
setkey('n', '<leader>x',    ':sp<CR>')

-- Goto Diagnostics
setkey('n', 'g]',           vim.diagnostic.goto_next)
setkey('n', 'g[',           vim.diagnostic.goto_prev)
setkey('n', 'gf',           vim.diagnostic.open_float)

-- Telescope
local builtin = require('telescope.builtin')
setkey('n', '<leader>ff', builtin.find_files, {})
setkey('n', '<leader>fg', builtin.live_grep, {})
setkey('n', '<leader>fb', builtin.buffers, {})
setkey('n', '<leader>fh', builtin.help_tags, {})

-- Reload vim
setkey('n', '<C-r>',        '<cmd>lua reload_nvim_conf()<CR>')

