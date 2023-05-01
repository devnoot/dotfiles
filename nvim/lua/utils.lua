local set_keymap = vim.api.nvim_set_keymap

local Utils = {}

function Utils.map(mode, lhs, rhs) set_keymap(mode, lhs, rhs, {silent = true}) end
function Utils.noremap(mode, lhs, rhs) set_keymap(mode, lhs, rhs, {silent = true, noremap = true}) end
function Utils.exprnoremap (mode, lhs, rhs) set_keymap(mode, lhs, rhs, {silent = true, noremap = true, expr = true}) end

function Utils.nmap(lhs, rhs) map('n', lhs, rhs) end
function Utils.xmap(lhs, rhs) map('x', lhs, rhs) end
function Utils.inoremap(lhs, rhs) noremap('i', lhs, rhs) end
function Utils.nnoremap(lhs, rhs) noremap('n', lhs, rhs) end
function Utils.tnoremap(lhs, rhs) noremap('t', lhs, rhs) end
function Utils.vnoremap (lhs, rhs) noremap('v', lhs, rhs) end
function Utils.xnoremap(lhs, rhs) noremap('x', lhs, rhs) end

function Utils.setopt(opt, val) vim.opt[opt] = val end
function Utils.setglobal(opt, val) vim.g[opt] = val end

return Utils