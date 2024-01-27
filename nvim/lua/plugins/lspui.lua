return {
  'jinzhongjia/LspUI.nvim',
  branch = 'main',
  keys = {
    {'gD',           '<cmd>LspUI declaration<CR>', { desc = "Declaration" }},
    {'gd',           '<cmd>LspUI definition<CR>',  { desc = "Definition" }},
    {'gr',           '<cmd>LspUI reference<CR>', { desc = "References" }},
    {'gi',           '<cmd>LspUI implementation<CR>', { desc = "Implementation" }},
    {'<Leader>k',    '<cmd>LspUI hover<CR>', { desc = "Hover" }},
    {'<Leader>d',    '<cmd>LspUI type_definition<CR>', { desc = "Type Definition" }},
    {'<Leader>ca',   '<cmd>LspUI code_action<CR>', { desc = "Code Action" }},
    {'<Leader>rn',   '<cmd>LspUI rename<CR>', { desc = "Rename" }},
  },
  config = function()
    require('LspUI').setup()
  end,
}
