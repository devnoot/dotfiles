local coq = require 'coq'

vim.g.coq_settings = {
  --keymap = { recommended = false },
  auto_start = 'shut-up',
  clients = {
    tmux = { enabled = false },
  },
  keymap = { jump_to_mark = "<ctrl-H>" }
}
