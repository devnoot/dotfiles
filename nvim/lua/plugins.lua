return require('packer').startup(function(use)

  -- Packer can manage itself.
  -- @url https://github.com/wbthomason/packer.nvim
  use 'wbthomason/packer.nvim'

  -- Portable package manager for Neovim that runs everywhere Neovim runs. Easily install and manage LSP servers, DAP servers, linters, and formatters.
  -- @url https://github.com/williamboman/mason.nvim
  use 'williamboman/mason.nvim'

  -- Quickstart configs for Nvim LSP
  -- @url https://github.com/neovim/nvim-lspconfig
 use 'neovim/nvim-lspconfig'

  -- Extension to mason.nvim that makes it easier to use lspconfig with mason.nvim.
  -- @url https://github.com/williamboman/mason-lspconfig.nvim
  use 'williamboman/mason-lspconfig.nvim'

  -- 🧘 Distraction-free coding for Neovim
  -- @url https://github.com/folke/zen-mode.nvim
  use 'folke/zen-mode.nvim'

  -- A file explorer tree for neovim written in lua
  -- @url https://github.com/nvim-tree/nvim-tree.lua
  use 'nvim-tree/nvim-tree.lua'

  -- lua `fork` of vim-web-devicons for neovim
  -- @url https://github.com/nvim-tree/nvim-web-devicons
  use 'nvim-tree/nvim-web-devicons'

  -- Vim motions on speed!
  -- @url https://github.com/easymotion/vim-easymotion
  use 'easymotion/vim-easymotion'

  -- Seamless navigation between tmux panes and vim splits
  -- @url https://github.com/christoomey/vim-tmux-navigator
  use 'christoomey/vim-tmux-navigator'

  -- A dark and light Neovim theme written in fennel, inspired by IBM Carbon.
  -- @url https://github.com/nyoom-engineering/oxocarbon.nvim
  use 'nyoom-engineering/oxocarbon.nvim'

  -- A fancy, configurable, notification manager for NeoVim
  -- @url https://github.com/rcarriga/nvim-notify
  use 'rcarriga/nvim-notify'

  use 'levouh/tint.nvim'

  use {
    'kdheepak/tabline.nvim',
    config = function()
      require'tabline'.setup {
      -- Defaults configuration options
      enable = true,
      options = {
        section_separators = {'', ''},
        component_separators = {'', ''},
        max_bufferline_percent = 66,
        show_tabs_always = false,
        show_devicons = true,
        show_bufnr = true,
        show_filename_only = false,
        modified_icon = "(+) ",
        modified_italic = false,
        show_tabs_only = true,
      }
    }
  end,
  requires = {
    { 'hoob3rt/lualine.nvim', opt=true },
    { 'kyazdani42/nvim-web-devicons', opt = true }
  }
}

--  -- Fast as FUCK nvim completion. SQLite, concurrent scheduler, hundreds of hours of optimization.
--  -- @url https://github.com/ms-jpq/coq_nvim
--  use {
--    'ms-jpq/coq_nvim',
--    branch = 'coq'
--  }
--
--  -- No description
--  -- @url https://github.com/ms-jpq/coq.artifacts
--  use {
--    'ms-jpq/coq.artifacts',
--    branch = 'artifacts'
--  }
--
--  -- Module lua sources for `coq.nvim`, first & third party
--  -- @url https://github.com/ms-jpq/coq.thirdparty
--  use {
--    'ms-jpq/coq.thirdparty',
--    branch = '3p'
--  }

  -- emmet for vim: http://emmet.io/
  -- @url https://github.com/mattn/emmet-vim
  use 'mattn/emmet-vim'

  -- Vim plugin that displays tags in a window, ordered by scope
  -- @url https://github.com/preservim/tagbar
  use 'preservim/tagbar'

  -- 🔗 The fancy start screen for Vim.
  -- @url https://github.com/mhinz/vim-startify
  use 'mhinz/vim-startify'

  -- Automatically discover and "properly" update ctags files on save
  -- @url https://github.com/craigemery/vim-autotag
  use 'craigemery/vim-autotag'

  --  🔥 No-nonsense floating terminal plugin for neovim 🔥
  -- @url https://github.com/numtostr/FTerm.nvim
  use "numToStr/FTerm.nvim"

  -- Find, Filter, Preview, Pick. All lua, all the time.
  -- @url https://github.com/nvim-telescope/telescope.nvim
  -- @depends nvim-lua/plenary.nvim
  use {
    "nvim-telescope/telescope.nvim", tag = "0.1.2",
     requires = { {"nvim-lua/plenary.nvim"} }
  }

  -- Nvim Treesitter configurations and abstraction layer
  -- @url https://github.com/nvim-treesitter/nvim-treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  }

  use {
    "akinsho/bufferline.nvim",
    tag = "*",
    requires = "nvim-tree/nvim-web-devicons"
  }

  -- 🚦 A pretty diagnostics, references, telescope results, quickfix and location list to help you solve all the trouble your code is causing.
  -- @url https://github.com/folke/trouble.nvim
  use {
    "folke/trouble.nvim",
    requires = { "nvim-tree/nvim-web-devicons" }
  }

  -- ChatGPT Neovim Plugin: Effortless Natural Language Generation with OpenAI's ChatGPT API
  -- @url https://github.com/jackMort/ChatGPT.nvim
  use({
  "jackMort/ChatGPT.nvim",
    config = function()
      require("chatgpt").setup()
    end,
    requires = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    }
  })

end)
