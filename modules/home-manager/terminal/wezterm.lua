local wezterm = require("wezterm")

local config = wezterm.config_builder()

local colors = require("colors")

config.font = wezterm.font("Mononoki Nerd Font")
config.font_size = 18

config.enable_tab_bar = false
config.use_fancy_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true

config.window_decorations = "NONE"

config.enable_wayland = true

config.window_padding = {
	left = 20,
	right = 20,
	top = 20,
	bottom = 5,
}

config.colors = colors

return config
