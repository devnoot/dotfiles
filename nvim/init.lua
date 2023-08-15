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
require('plugins.notify')
require('plugins.fterm')

require("tint").setup()
require('zen-mode').setup()

-- Keep theme last
require('theme')

