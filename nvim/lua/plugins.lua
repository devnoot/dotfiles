return require('packer').startup(function(use)
  -- Packer can manage itself.
  use 'wbthomason/packer.nvim'

  use 'folke/zen-mode.nvim'

  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'

  use 'easymotion/vim-easymotion'

  use 'christoomey/vim-tmux-navigator'

  use {
    'catppuccin/nvim',
    as = 'catppuccin'
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = {
      'nvim-tree/nvim-web-devicons',
      opt = true
    }
  }

  use 'neovim/nvim-lspconfig'

  use {
    'ms-jpq/coq_nvim',
    branch = 'coq'
  }

  use {
    'ms-jpq/coq.artifacts',
    branch = 'artifacts'
  }

  use {
    'ms-jpq/coq.thirdparty',
    branch = '3p'
  }

  use 'mattn/emmet-vim'

  use 'preservim/tagbar'

  use 'mustache/vim-mustache-handlebars'

  use 'othree/html5.vim'

  use {
    'evanleck/vim-svelte',
    branch = 'main'
  }

  use 'mhinz/vim-startify'

  use 'craigemery/vim-autotag'

  use {
    "jackMort/ChatGPT.nvim",
    requires = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    }
  }

  use 'tpope/vim-surround'

--Plug('junegunn/fzf')
--Plug('pangloss/vim-javascript')
--Plug('leafgarland/typescript-vim')
--Plug('scrooloose/nerdcommenter')
--call('plug#end')

end)
