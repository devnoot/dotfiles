-- Vim motions on speed!
-- @url https://github.com/easymotion/vim-easymotion

return {

  'easymotion/vim-easymotion',

  keys = {
    {'<leader><leader>f', '<Plug>(easymotion-overwin-f)', desc = 'Easymotion find'},
    {'<leader><leader>j', '<Plug>(easymotion-j)', desc = 'Easymotion j motion'},
    {'<leader><leader>k', '<Plug>(easymotion-k)', desc = 'Easymotion k motion'},
    {'/', '<Plug>(easymotion-sn)', desc = 'Easymotion search'},
  },

}
