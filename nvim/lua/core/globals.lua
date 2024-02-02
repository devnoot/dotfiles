local Utils = require('utils')
local setglobal = Utils.setglobal

-- use <Space> as leader
setglobal('mapleader', ' ')

setglobal('python3_host_prog', "/usr/bin/python3")

-- Disable default easymotion mappings
setglobal('ls.EasyMotion_do_mapping', 0)
setglobal('ls.EasyMotion_smartcase', 1)
