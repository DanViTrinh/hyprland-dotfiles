local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "catppuccin-latte"

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

config.enable_wayland = false

config.keys = {
	{
		key = "f",
		mods = "CTRL|SHIFT",
		action = wezterm.action.DisableDefaultAssignment,
	},
	{
		key = "w",
		mods = "CTRL|SHIFT",
		action = wezterm.action.DisableDefaultAssignment,
	},
}

return config
