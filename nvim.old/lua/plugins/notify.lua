return {
  'rcarriga/nvim-notify',

  init = function()
    require('notify').setup({
      stages = 'slide',
      render = 'compact',
      timeout = 1500,
      top_down = true
    })

    vim.notify = require("notify")

    vim.cmd([[
      hi default link NotifyBackground Normal
      hi default NotifyERRORBorder guifg=#8A1F1F
      hi default NotifyWARNBorder guifg=#79491D
      hi default NotifyINFOBorder guifg=#4F6752
      hi default NotifyDEBUGBorder guifg=#8B8B8B
      hi default NotifyTRACEBorder guifg=#4F3552
      hi default NotifyERRORIcon guifg=#F70067
      hi default NotifyWARNIcon guifg=#F79000
      hi default NotifyINFOIcon guifg=#A9FF68
      hi default NotifyDEBUGIcon guifg=#8B8B8B
      hi default NotifyTRACEIcon guifg=#D484FF
      hi default NotifyERRORTitle  guifg=#F70067
      hi default NotifyWARNTitle guifg=#F79000
      hi default NotifyINFOTitle guifg=#A9FF68
      hi default NotifyDEBUGTitle  guifg=#8B8B8B
      hi default NotifyTRACETitle  guifg=#D484FF
      hi default link NotifyERRORBody Normal
      hi default link NotifyWARNBody Normal
      hi default link NotifyINFOBody Normal
      hi default link NotifyDEBUGBody Normal
      hi default link NotifyTRACEBody Normal
      hi default link NotifyLogTime Comment
      hi default link NotifyLogTitle Special
    ]])
  end,

}

