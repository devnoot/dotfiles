local setkey = vim.keymap.set

setkey('n', '<Leader>t', '<CMD>lua require("FTerm").toggle()<CR>')
setkey('t', '<Leader>t', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
