local Utils = require('utils')
local setglobal = Utils.setglobal

-- use <Space> as leader
setglobal('mapleader', ' ')

setglobal('ls.python3_host_prog', "/usr/bin/python3")
setglobal('ls.javascript_plugin_jsdoc', 1)
setglobal('ls.typescript_compiler_binary', "tsc")
setglobal('fzf_preview_window', { 'right:50%', 'ctrl-/' })
setglobal('ls.fzf_tags_command', 'ctags -R')

-- Disable default easymotion mappings
setglobal('ls.EasyMotion_do_mapping', 0)
setglobal('ls.EasyMotion_smartcase', 1)