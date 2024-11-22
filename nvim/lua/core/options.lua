local Utils = require('utils')
local setopt = Utils.setopt
local setglobal = Utils.setglobal

-- :h 'hidden'
setopt('hidden', true)

-- don't show comand line height. When you are in command mode, it will just write over
-- the statusline
setopt('cmdheight', 0)

-- decrease time to update
setopt('updatetime', 250)

-- show line numbers
setopt('number', true)

-- show relative line numbers
setopt('rnu', true)

-- show matches
setopt('showmatch', true)

-- incremental searching
setopt('incsearch', true)

-- tab config
setopt('tabstop', 2)
setopt('softtabstop', 2)
setopt('shiftwidth', 2)

-- convert tabs to spaces
setopt('expandtab', true)

-- TODO
setopt('smartindent', true)

-- new lines indent the same as previous
setopt('autoindent', true)

-- faster scrolling
setopt('ttyfast', true)

-- more natural splitting
setopt('splitbelow', true)
setopt('splitright', true)

-- enable the mouse
setopt('mouse', 'a')

-- enable truecolor
setopt('termguicolors', true)

-- highlight the current line
setopt('cursorline', true)

-- Always show the signcolumn, otherwise it would shift the text each time diagnostics appeared/became resolved
setopt('signcolumn', 'yes')

