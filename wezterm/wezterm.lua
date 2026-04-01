local wezterm = require 'wezterm'

local function scheme_for_appearance(appearance)
  if appearance:find("Dark") then
    return "Catppuccin Mocha" -- Replace with your preferred dark theme
  else
    return "Catppuccin Latte" -- Replace with your preferred light theme
  end
end

return {
  color_scheme = scheme_for_appearance(wezterm.gui.get_appearance()),
  font = wezterm.font_with_fallback({"Hack Nerd Font", "JetBrains Mono"}),
  font_size = 13.0,
  window_background_opacity = 0.95,
  enable_tab_bar = false,
  window_padding = {
    left = 10,
    right = 10,
    top = 6,
    bottom = 6,
  },
}
