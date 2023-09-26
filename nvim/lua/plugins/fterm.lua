local setkey = vim.keymap.set

setkey('n', '<leader>t', '<CMD>lua require("FTerm").toggle()<CR>')
setkey('t', '<leader>t', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
