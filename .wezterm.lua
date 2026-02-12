-- Pull in the wezterm API
local wezterm = require 'wezterm'
local act = wezterm.action

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font_size = 10
config.color_scheme = 'Tokyo Night'

config.enable_tab_bar = false

config.window_background_opacity = 1.0

config.keys = {
    -- paste from the clipboard
    { key = 'v', mods = 'CTRL', action = act.PasteFrom 'Clipboard' },
    --
    -- paste from the clipboard
    { key = 'v', mods = 'CTRL', action = act.PasteFrom 'PrimarySelection' },
}

config.keys = {
    { key = 'DownArrow', mods = 'CTRL', action = act.ScrollByPage(-0.5) },
    { key = 'UpArrow',   mods = 'CTRL', action = act.ScrollByPage(0.5) },
}

-- Finally, return the configuration to wezterm:
return config
