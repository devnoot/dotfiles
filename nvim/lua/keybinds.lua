local setkey = vim.keymap.set

-- Window & Misc
setkey('n', '<SPACE>',      '', { noremap = true, silent = true })
setkey('n', '<Leader>n',    ':NvimTreeToggle<CR>')
setkey('n', '<Leader>]',    ':bn<CR>')
setkey('n', '<Leader>[',    ':bp<CR>')
setkey('n', '<Leader>z',    ':ZenMode<CR>')
setkey('n', '<c-h>',        '<c-w>h')
setkey('n', '<c-j>',        '<c-w>j')
setkey('n', '<c-k>',        '<c-w>k')
setkey('n', '<c-l>',        '<c-w>l')
setkey('n', '<F8>',         ':TagbarToggle<CR>')
setkey('n', '<Leader>e',    ':Explore<CR>')
setkey("i", "jk",           "<Esc>")

-- Easymotion
setkey('n', '<Leader>f',    '<Plug>(easymotion-bd-f)')
setkey('n', '<Leader>L',    '<Plug>(easymotion-bd-jk)')
setkey('n', '<Leader>w',    '<Plug>(easymotion-bd-w)')
setkey('n', '<Leader>s',    '<Plug>(easymotion-s2)')
setkey('n', 'n',            '<Plug>(easymotion-next)')
setkey('n', 'N',            '<Plug>(easymotion-prev)')
setkey('n', '<Leader>j',    '<Plug>(easymotion-j)')
setkey('n', '<Leader>k',    '<Plug>(easymotion-k)')
setkey('n', '/',            '<Plug>(easymotion-sn)')
setkey('o', '/',            '<Plug>(easymotion-tn)')

-- Splits
setkey('n', '<Leader>v',    ':vsp<CR>')
setkey('n', '<Leader>-',    ':sp<CR>')

-- Goto Diagnostics
setkey('n', 'g]',           vim.diagnostic.goto_next)
setkey('n', 'g[',           vim.diagnostic.goto_prev)
setkey('n', 'gf',           vim.diagnostic.open_float)
