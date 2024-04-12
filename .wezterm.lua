local wezterm = require 'wezterm'
local mux = wezterm.mux

wezterm.on('gui-startup', function()
  local tab, pane, window = mux.spawn_window{}
  window:gui_window():maximize()
end)
local config = wezterm.config_builder()
config.keys = {
  {
    key = 'n',
    mods = 'SHIFT|CTRL',
    action = wezterm.action.ToggleFullScreen,
  },
}
config.window_close_confirmation = 'NeverPrompt'
config.default_domain = 'WSL:Ubuntu-22.04'
config.window_background_opacity =1 
config.font = wezterm.font('Fira Code')
config.font_size =  16
config.line_height = 1.6 
config.adjust_window_size_when_changing_font_size = true
config.animation_fps = 5
config.colors = {
  foreground = '#ffffff',
  background = '#00141a',
  cursor_bg = '#00c16a',
  cursor_fg = '#ffffff',
  cursor_border = '#00c16a',
  selection_bg = '#0f172a',
  selection_fg = '#ffffff',
}
config.integrated_title_buttons = { }
config.enable_tab_bar = false
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0
}
return config  
