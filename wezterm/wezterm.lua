local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.adjust_window_size_when_changing_font_size = false
config.initial_cols = 120
config.initial_rows = 28

config.font = wezterm.font("RobotoMono Nerd Font Mono")
config.font_size = 12

config.color_scheme = "Gruvbox Dark (Gogh)"

config.window_background_opacity = 0.9
config.hide_tab_bar_if_only_one_tab = true

config.window_padding = { left = 8, right = 8, top = 8, bottom = 8 }

return config
