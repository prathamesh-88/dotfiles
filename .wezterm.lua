-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()


-- ----------------------------------------------------------------------------
-- 1. Appearance & Colors
-- ----------------------------------------------------------------------------
-- WezTerm has 1000+ built-in themes. Common picks:
-- 'Catppuccin Mocha', 'Tokyo Night', 'Nord', 'Gruvbox Dark', 'OneDark'
config.color_scheme = 'Adventure'

-- Font settings (automatically supports ligatures and powerline symbols)
config.font = wezterm.font('JetBrainsMono Nerd Font')

-- Window padding (gives text breathing room from the window edge)
config.window_padding = {
  left = 12,
  right = 12,
  top = 12,
  bottom = 12,
}

-- ----------------------------------------------------------------------------
-- 2. Tmux Integration (Eliminate Clutter)
-- ----------------------------------------------------------------------------
-- Since tmux manages your tabs, hide WezTerm's native tab bar
config.enable_tab_bar = false

-- Title bar styling:
-- On macOS: 'RESIZE' creates a borderless window with hidden titlebar
-- On Linux/Windows: use 'RESIZE' or 'TITLE | RESIZE'
config.window_decorations = 'RESIZE'

-- ----------------------------------------------------------------------------
-- 3. Behavior & Performance
-- ----------------------------------------------------------------------------
-- Auto-reload config on save
config.automatically_reload_config = true

-- Ensure proper rendering
config.front_end = 'WebGpu'

return config
