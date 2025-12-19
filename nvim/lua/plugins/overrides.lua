return {
  {
    "ellisonleao/gruvbox.nvim",
  },
  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = false,
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      options = {
        theme = "gruvbox",
      },
    },
  },
  {
    "easymotion/vim-easymotion",
    enabled = true,
  },
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        enabled = false,
      },
    },
  },
  {
    "goolord/alpha-nvim",
    enabled = true,
    opts = function(_, opts)
      local logo = [[
          :h-                                  Nhy`               
        -mh.                           h.    `Ndho               
        hmh+                          oNm.   oNdhh               
        `Nmhd`                        /NNmd  /NNhhd               
        -NNhhy                      `hMNmmm`+NNdhhh               
        .NNmhhs              ```....`..-:/./mNdhhh+               
        mNNdhhh-     `.-::///+++////++//:--.`-/sd`               
        oNNNdhhdo..://++//++++++/+++//++///++/-.`                
    y.   `mNNNmhhhdy+/++++//+/////++//+++///++////-` `/oos:       
.    Nmy:  :NNNNmhhhhdy+/++/+++///:.....--:////+++///:.`:s+        
h-   dNmNmy oNNNNNdhhhhy:/+/+++/-         ---:/+++//++//.`         
hd+` -NNNy`./dNNNNNhhhh+-://///    -+oo:`  ::-:+////++///:`        
/Nmhs+oss-:++/dNNNmhho:--::///    /mmmmmo  ../-///++///////.       
oNNdhhhhhhhs//osso/:---:::///    /yyyyso  ..o+-//////////:/.      
/mNNNmdhhhh/://+///::://////     -:::- ..+sy+:////////::/:/.     
  /hNNNdhhs--:/+++////++/////.      ..-/yhhs-/////////::/::/`    
    .ooo+/-::::/+///////++++//-/ossyyhhhhs/:///////:::/::::/:    
    -///:::::::////++///+++/////:/+ooo+/::///////.::://::---+`   
    /////+//++++/////+////-..//////////::-:::--`.:///:---:::/:   
    //+++//++++++////+++///::--                 .::::-------::   
    :/++++///////////++++//////.                -:/:----::../-   
    -/++++//++///+//////////////               .::::---:::-.+`   
    `////////////////////////////:.            --::-----...-/    
      -///://////////////////////::::-..      :-:-:-..-::.`.+`    
      :/://///:///::://::://::::::/:::::::-:---::-.-....``/- -   
        ::::://::://::::::::::::::----------..-:....`.../- -+oo/ 
          -/:::-:::::---://:-::-::::----::---.-.......`-/.      ``
        s-`::--:::------:////----:---.-:::...-.....`./:          
        yMNy.`::-.--::..-dmmhhhs-..-.-.......`.....-/:`           
      oMNNNh. `-::--...:NNNdhhh/.--.`..``.......:/-              
      :dy+:`      .-::-..NNNhhd+``..`...````.-::-`                
                      .-:mNdhh:.......--::::-`                    
                        yNh/..------..`                          
                                                                  
    ]]
      opts.section.header.val = vim.split(logo, "\n")
    end,
  },
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
