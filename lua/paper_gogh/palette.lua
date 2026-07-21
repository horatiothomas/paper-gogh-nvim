local M = {}

M.light = {
  bg = "#f2eede",
  bg_dim = "#ebe6d4",
  bg_dark = "#e4dfcc",
  bg_light = "#f8f5eb",
  bg_visual = "#d6e4f0",
  bg_search = "#f0e0a0",
  bg_match = "#c8ddd0",

  fg = "#000000",
  fg_dim = "#555555",
  fg_subtle = "#888888",
  fg_muted = "#aaaaaa",

  black = "#000000",
  red = "#cc3e28",
  green = "#216609",
  yellow = "#b58900",
  blue = "#1e6fcc",
  magenta = "#5c21a5",
  cyan = "#158c86",
  white = "#aaaaaa",

  bright_black = "#555555",
  bright_red = "#cc3e28",
  bright_green = "#216609",
  bright_yellow = "#b58900",
  bright_blue = "#1e6fcc",
  bright_magenta = "#5c21a5",
  bright_cyan = "#158c86",
  bright_white = "#aaaaaa",

  orange = "#c45c1a",
  soft_red = "#e8c8c0",
  soft_green = "#c8dcc0",
  soft_yellow = "#ebe0b0",
  soft_blue = "#c0d4e8",
  soft_magenta = "#d8c8e4",
  soft_cyan = "#c0ddd8",

  none = "NONE",
}

M.dark = {
  bg = "#1c1c1c",
  bg_dim = "#262626",
  bg_dark = "#121212",
  bg_light = "#303030",
  bg_visual = "#33434c",
  bg_search = "#5a4800",
  bg_match = "#29453a",

  fg = "#d0d0d0",
  fg_dim = "#808080",
  fg_subtle = "#6c6c6c",
  fg_muted = "#585858",

  black = "#1c1c1c",
  red = "#af005f",
  green = "#5faf00",
  yellow = "#d7af5f",
  blue = "#5fafd7",
  magenta = "#808080",
  cyan = "#d7875f",
  white = "#d0d0d0",

  bright_black = "#585858",
  bright_red = "#5faf5f",
  bright_green = "#afd700",
  bright_yellow = "#af87d7",
  bright_blue = "#ffaf00",
  bright_magenta = "#ff5faf",
  bright_cyan = "#00afaf",
  bright_white = "#5f8787",

  orange = "#ffaf00",
  soft_red = "#451f32",
  soft_green = "#2d401f",
  soft_yellow = "#493d28",
  soft_blue = "#283f49",
  soft_magenta = "#403044",
  soft_cyan = "#254344",

  none = "NONE",
}

M.colors = M.light

function M.get(appearance)
  return appearance == "dark" and M.dark or M.light
end

return M
