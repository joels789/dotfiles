-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- or, changing the font size and color scheme.
-- config.font = wezterm.font("JetBrains Mono", { weight = "Bold" })
-- config.font = wezterm.font("Cascadia Code", { weight = "Regular", stretch = "Normal", italic = false }) -- /home/wez/.fonts/CascadiaCode.ttf index=0 variation=4, FontDirs
-- config.font = wezterm.font("Space Mono for Powerline", { weight = "Regular", stretch = "Normal", style = "Normal" }) -- /Users/gsk/Library/Fonts/Space Mono for Powerline.ttf, CoreText
-- config.font = wezterm.font("Hack Nerd Font Propo", { weight = "Regular", stretch = "Normal", style = "Normal" }) -- /Users/gsk/Library/Fonts/Source Code Pro for Powerline.otf, CoreText
-- config.font = wezterm.font("Hack Nerd Font Mono", { weight = "Bold", stretch = "Normal", style = "Normal" }) -- /Users/gsk/Library/Fonts/Source Code Pro for Powerline.otf, CoreText
config.font = wezterm.font("Meslo LG S for Powerline", { weight = "Bold", stretch = "Normal", style = "Normal" }) -- /Users/gsk/Library/Fonts/Source Code Pro for Powerline.otf, CoreText
-- config.font = wezterm.font("Noto Mono for Powerline", { weight = "Bold", stretch = "Normal", style = "Normal" }) -- /Users/gsk/Library/Fonts/Source Code Pro for Powerline.otf, CoreText
-- config.font = wezterm.font("Fira Mono for Powerline", { weight = "Bold", stretch = "Normal", style = "Normal" }) -- /Users/gsk/Library/Fonts/Source Code Pro for Powerline.otf, CoreText
-- config.font =
--	wezterm.font("Droid Sans Mono Dotted for Powerline", { weight = "Bold", stretch = "Normal", style = "Normal" }) -- /Users/gsk/Library/Fonts/Source Code Pro for Powerline.otf, CoreText
-- wezterm.font("Source Code Pro for Powerline", { weight = "Bold", stretch = "Normal", style = "Normal" }) -- /Users/gsk/Library/Fonts/Source Code Pro for Powerline.otf, CoreText

-- config.font = wezterm.font("MesloLGS")

config.font_size = 14
-- config.color_scheme = "s3r0 modified (terminal.sexy)"
-- config.color_scheme = "Ayu Mirage"
-- config.color_scheme = "Ciapre"
-- config.color_scheme = "Circus (base16)"
-- config.color_scheme = "Arthur"
-- config.color_scheme = "Gruvbox (dark, soft)"
-- config.color_scheme = "Afterglow (Gogh)"
-- config.color_scheme = "posterpole"

config.window_background_opacity = 0.90

config.cursor_blink_rate = 800

config.native_macos_fullscreen_mode = true

--config.colors = {
--  ansi = {
--    "#ebebeb", "#d6000c", "#1d9700", "#c49700",
--    "#0064e4", "#dd0f9d", "#00ad9c", "#878787"
--  },
--  brights = {
--    "#cdcdcd", "#bf0000", "#008400", "#af8500",
--    "#0054cf", "#c7008b", "#009a8a", "#282828"
--  },
--  background = "#ffffff",
--  foreground = "#474747",
--  cursor_bg = "#008400",
--  cursor_border = "#008400",
--  cursor_fg = "#ffffff",
--  selection_bg = "#474747",
--  selection_fg = "#ffffff",
--}

-- ansi = ["#151515","#ac4142","#7e8e50","#e5b567","#6c99bb","#9f4e85","#7dd6cf","#d0d0d0"]

config.colors = {
	ansi = {
		"#2e2e2e",
		"#ac4142",
		"#7e8e50",
		"#e5b567",
		"#6c99bb",
		"#9f4e85",
		"#7dd6cf",
		"#d0d0d0",
	},
	foreground = "#FACF00",
	-- foreground = "#CC9166",
	-- foreground = "#e5b567",
	background = "#111111",
	-- background = "#1d1e20",
	selection_fg = "#7dd5cf",
	selection_bg = "#2e2e2e",
}

-- Finally, return the configuration to wezterm:
return config
