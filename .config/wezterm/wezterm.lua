local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "catppuccin-frappe"

config.font = wezterm.font("Hack Nerd Font")

config.hide_tab_bar_if_only_one_tab = true

local padding_width = 15
config.window_padding = {
	left = padding_width,
	right = padding_width,
	top = padding_width,
	bottom = padding_width,
}

config.default_cursor_style = "SteadyBar"

return config
