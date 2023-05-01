-- Keep this first so we can use it in other plugins.
require('globals')
require('plugins')
require('options')
require('commands')
require('keybinds')

-- COQ must be required before LSP!
require('plugins.coq')
require('plugins.lsp')
require('plugins.nvim-tree')
require('plugins.chatgpt')

require('zen-mode').setup()
require('lualine').setup()

-- Keep theme last
require('theme')

