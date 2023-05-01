local cmd = vim.cmd
local autocmd = vim.api.nvim_create_autocmd

-- enable syntax highlighting
cmd("syntax enable")

-- don't pass messages to |ins-completion-menu|
cmd("set shortmess+=c")

autocmd("BufWritePre", {
	pattern = "",
	command = "%s/\\s\\+$//e"
})

-- Run PackerCompile if plugins.lua changes
cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

