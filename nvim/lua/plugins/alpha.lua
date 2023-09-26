-- a lua powered greeter like vim-startify / dashboard-nvim
-- @url https://github.com/goolord/alpha-nvim

return {
  'goolord/alpha-nvim',

  config = function ()
    require'alpha'.setup(require'alpha.themes.dashboard'.config)
  end,

}
