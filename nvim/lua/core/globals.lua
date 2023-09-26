local Utils = require('utils')
local setglobal = Utils.setglobal

-- See https://github.com/nvim-tree/nvim-tree.lua
setglobal('loaded_netrw', 1)
setglobal('loaded_netrwPlugin', 1)

-- use <Space> as leader
setglobal('mapleader', ' ')

setglobal('python3_host_prog', "/usr/bin/python3")

-- Disable default easymotion mappings
setglobal('ls.EasyMotion_do_mapping', 0)
setglobal('ls.EasyMotion_smartcase', 1)
