local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "MaterialOcean"

local bg = "#0f111A"
local fg = "#8F93A2"
local accent = "84ffff"

config.colors = {
	tab_bar = {
		background = "none",
		inactive_tab = {
			bg_color = "none",
			fg_color = fg,
		},
		active_tab = {
			bg_color = bg,
			fg_color = accent,
		},
		new_tab = {
			bg_color = "none",
			fg_color = fg,
		},
	},
}

config.window_background_gradient = {
	colors = { bg, "black" },
	orientation = { Linear = { angle = -70.0 } },
	noise = 300,
	-- noise = 0,
}

local font = 0
if font == 1 then
	-- Comfortable font
	config.font = wezterm.font({
		family = "0xProto",
		harfbuzz_features = { "ss01" },
	})
	config.font_size = 11
elseif font == 2 then
	-- Most compact bitmap font, for looking at lots of code
	config.font = wezterm.font_with_fallback({ "ProggySquareTTSZ", { family = "Symbols Nerd Font Mono", scale = 0.6 } })
	config.font_size = 12
elseif font == 3 then
	-- Bit bigger bitmap font, more comfy
	config.font = wezterm.font("Fixedsys Excelsior")
	config.font_size = 12
end

config.freetype_load_target = "Normal"

config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = false
-- config.tab_bar_at_bottom = true

config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.window_padding = { left = 0, right = 0, top = 0, bottom = 0 }

-- and finally, return the configuration to wezterm
return config
