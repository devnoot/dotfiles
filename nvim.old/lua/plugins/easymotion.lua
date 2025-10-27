-- Vim motions on speed!
-- @url https://github.com/easymotion/vim-easymotion
return {

  'easymotion/vim-easymotion',

  keys = {
    {'<leader><leader>f', '<plug>(easymotion-overwin-f)', desc = 'Search for 1 character'},
    {'<leader><leader>j', '<plug>(easymotion-j)', desc = 'Move down to line'},
    {'<leader><leader>k', '<plug>(easymotion-k)', desc = 'Move up to line'},
    {'<leader><leader>w', '<plug>(easymotion-bd-w)',  desc = 'Move to word'},
    {'/', '<Plug>(easymotion-sn)', desc = 'Search'},
  },

}
