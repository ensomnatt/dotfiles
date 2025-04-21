local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font("Mononoki Nerd Font")
config.font_size = 19

config.enable_tab_bar = false
config.use_fancy_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true

config.window_decorations = "NONE"
config.window_background_opacity = 0.9

config.window_padding = {
	left = 22,
	right = 22,
	top = 22,
	bottom = 5,
}

config.window_frame = {
  font = wezterm.font { family = "Mononoki Nerd Font", weight = "Bold" },

  font_size = 15.0,

  active_titlebar_bg = "rgba(0, 0, 0, 0.75)",
}

config.colors = {
  cursor_bg = "#ffffff",

  tab_bar = {
    background = "rgba(0, 0, 0, 0.8)",

    active_tab = {
      bg_color = "rgba(0, 0, 0, 0.8)",
      fg_color = "white",
    },

    inactive_tab = {
      bg_color = "rgba(0, 0, 0, 0.8)",
      fg_color = "white",
    },

    new_tab = {
      bg_color = "rgba(0, 0, 0, 0.8)",
      fg_color = "#6d000f",
    },
  }
}

return config
