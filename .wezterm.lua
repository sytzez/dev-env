-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "Mathias"

config.colors = {
	background = "rgba(0 0 0 65%)",
	tab_bar = {
		background = "rgba(0 0 0 65%)",
		inactive_tab = {
			bg_color = "rgba(0 0 0 65%)",
			fg_color = "#666666",
		},
		new_tab = {
			bg_color = "rgba(0 0 0 65%)",
			fg_color = "#666666",
		},
	},
}

config.font = wezterm.font("CaskaydiaCove NerdFont")
config.font_size = 8
config.freetype_load_target = "Normal"

config.use_fancy_tab_bar = false

-- and finally, return the configuration to wezterm
return config
