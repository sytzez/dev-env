-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "Catppuccin Mocha"

config.colors = {
	-- foreground = "white",
	-- background = "rgba(0 0 0 65%)",
	-- tab_bar = {
	-- 	background = "rgba(0 0 0 65%)",
	-- 	inactive_tab = {
	-- 		bg_color = "rgba(0 0 0 65%)",
	-- 		fg_color = "#666666",
	-- 	},
	-- 	new_tab = {
	-- 		bg_color = "rgba(0 0 0 65%)",
	-- 		fg_color = "#666666",
	-- 	},
	-- },
}

-- Comfortable font
config.font = wezterm.font({
	family = "0xProto",
	harfbuzz_features = { "ss01" },
})
config.font_size = 13

-- Most compact bitmap font, for looking at lots of code
config.font = wezterm.font_with_fallback({ "ProggySquareTTSZ", { family = "Symbols Nerd Font Mono", scale = 0.6 } })
config.font_size = 12

-- Bit bigger bitmap font, more comfy
-- config.font = wezterm.font("Fixedsys Excelsior")
-- config.font_size = 12

config.freetype_load_target = "Normal"

config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
-- config.tab_bar_at_bottom = true

config.window_decorations = "RESIZE"
config.window_padding = { left = 0, right = 0, top = 0, bottom = 0 }

-- and finally, return the configuration to wezterm
return config
