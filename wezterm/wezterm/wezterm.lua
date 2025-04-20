local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font("Mononoki Nerd Font")
config.font_size = 19

config.enable_tab_bar = false

config.window_decorations = "NONE"
config.window_background_opacity = 0.9

config.window_padding = {
	left = 22,
	right = 22,
	top = 22,
	bottom = 5,
}

config.colors = {
  cursor_bg = "#ffffff"
}

return config
