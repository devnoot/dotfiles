local wezterm = require("wezterm")
local config = wezterm.config_builder()
config.adjust_window_size_when_changing_font_size = false
config.initial_cols = 120
config.initial_rows = 28
config.font = wezterm.font("RobotoMono Nerd Font Mono")
config.font_size = 13
config.color_scheme = "Google Dark (Gogh)"
config.window_background_opacity = 0.9
config.hide_tab_bar_if_only_one_tab = true
config.default_prog = { "C:\\Windows\\System32\\wsl.exe", "-d", "Ubuntu" }
config.default_cwd = [[\\wsl$\Ubuntu\home\noot]]
config.window_padding = { left = 16, right = 16, top = 16, bottom = 16 }
return config
