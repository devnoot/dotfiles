local cmd = vim.cmd
local autocmd = vim.api.nvim_create_autocmd

-- enable syntax highlighting
cmd("syntax enable")

cmd("colorscheme retrobox")

-- don't pass messages to |ins-completion-menu|
--cmd("set shortmess+=c")

-- Use showtabline in gui vim
--cmd("set guioptions-=e")

-- store tabpages and globals in session
--cmd("set sessionoptions+=tabpages,globals")

autocmd("BufWritePre", {
	pattern = "",
  command = "%s/\\s\\+$//e"
})

