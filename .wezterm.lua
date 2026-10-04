-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()


-- ----------------------------------------------------------------------------
-- 1. Appearance & Colors
-- ----------------------------------------------------------------------------
-- WezTerm has 1000+ built-in themes. Common picks:
-- 'Catppuccin Mocha', 'Tokyo Night', 'Nord', 'Gruvbox Dark', 'OneDark'
-- config.color_scheme = 'Adventure'
config.color_scheme = '3024 (dark) (terminal.sexy)'

-- Font settings (automatically supports ligatures and powerline symbols)
config.font = wezterm.font('0xProto Nerd Font')
config.font_size = 13

-- Window padding (gives text breathing room from the window edge)
config.window_padding = {
  left = 12,
  right = 12,
  top = 20,
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

config.default_prog = {
  '/bin/zsh',
  '-l',
  '-c',
  'tmux new-session -A -s main',
}

-- ----------------------------------------------------------------------------
-- 3. Behavior & Performance
-- ----------------------------------------------------------------------------
-- Auto-reload config on save
config.automatically_reload_config = true

-- Ensure proper rendering
config.front_end = 'WebGpu'

return config
