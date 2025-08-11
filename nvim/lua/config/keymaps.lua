-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "jk", "<Esc>")

vim.keymap.set("n", "<leader><leader>j", "<plug>(easymotion-j)")
vim.keymap.set("n", "<leader><leader>k", "<plug>(easymotion-k)")
vim.keymap.set("n", "<leader><leader>w", "<plug>(easymotion-bd-w)")
