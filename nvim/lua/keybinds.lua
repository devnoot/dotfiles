local setkey = vim.keymap.set
local globals = vim.g

setkey('n', '<SPACE>', '', { noremap = true, silent = true })
setkey('n', '<Leader>n', ':NvimTreeToggle<BR>')

-- !!IMPORTANT!! Set this before the leader!
setkey('n', '<Leader>]', ':bn<CR>')
setkey('n', '<Leader>[', ':bp<CR>')
setkey('n', '<Leader>z', ':ZenMode<CR>')
setkey('n', '<c-h>', '<c-w>h')
setkey('n', '<c-j>', '<c-w>j')
setkey('n', '<c-k>', '<c-w>k')
setkey('n', '<c-l>', '<c-w>l')
setkey('n', '<Leader>f', '<Plug>(easymotion-bd-f)')
setkey('n', '<Leader>L', '<Plug>(easymotion-bd-jk)')
setkey('n', '<Leader>w', '<Plug>(easymotion-bd-w)')
setkey('n', '<Leader>s', '<Plug>(easymotion-s2)')
setkey('n', 'n', '<Plug>(easymotion-next)')
setkey('n', 'N', '<Plug>(easymotion-prev)')
setkey('n', '<Leader>j', '<Plug>(easymotion-j)')
setkey('n', '<Leader>k', '<Plug>(easymotion-k)')
setkey('n', '/', '<Plug>(easymotion-sn)')
setkey('o', '/', '<Plug>(easymotion-tn)')
setkey('n', '<Leader>v', ':vsp<CR>')
setkey('n', '<Leader>-', ':sp<CR>')
setkey('n', '<F8>', ':TagbarToggle<CR>')
setkey('n', '<Leader>e', ':Explore<CR>')
--setkey('n', '<Leader>rn', '<Plug>(coc-rename)')
--setkey('n', '<Leader>f', '<Plug>(coc-format-selected)')
--setkey('n', 'gd', '<Plug>(coc-definition)', { silent = true })
--setkey('n', 'gy', '<Plug>(coc-type-definition)', { silent = true })
--setkey('n', 'gi', '<Plug>(coc-implementation)', { silent = true })
--setkey('n', 'gr', '<Plug>(coc-references)', { silent = true })
--setkey('x', '<Leader>f', '<Plug>(coc-format-selected)')
--setkey("n", "K", '<CMD>lua _G.show_docs()<CR>', {silent = true})
setkey("i", "jk", "<Esc>")
-- Use Tab for trigger completion with characters ahead and navigate
-- NOTE: There's always a completion item selected by default, you may want to enable
-- no select by setting `"suggest.noselect": true` in your configuration file
-- NOTE: Use command ':verbose imap <tab>' to make sure Tab is not mapped by
-- other plugins before putting this into your config
--local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
--setkey("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
--setkey("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)

-- Make <CR> to accept selected completion item or notify coc.nvim to format
-- <C-g>u breaks current undo, please make your own choice
--setkey("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)

-- Use <c-j> to trigger snippets
--setkey("i", "<c-j>", "<Plug>(coc-snippets-expand-jump)")
-- Use <c-space> to trigger completion
--setkey("i", "<c-space>", "coc#refresh()", {silent = true, expr = true})

-- Use `[g` and `]g` to navigate diagnostics
-- Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
--local opts = { silent = true }
--setkey("n", "[g", "<Plug>(coc-diagnostic-prev)", opts)
--setkey("n", "]g", "<Plug>(coc-diagnostic-next)", opts)

-- Symbol renaming
--setkey("n", "<Leader>rn", "<Plug>(coc-rename)", opts)

-- Formatting selected code
--setkey("x", "<Leader>f", "<Plug>(coc-format-selected)", opts)
--setkey("n", "<Leader>f", "<Plug>(coc-format-selected)", opts)
