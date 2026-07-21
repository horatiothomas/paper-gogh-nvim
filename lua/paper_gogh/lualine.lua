local c = require("paper_gogh.palette").colors

local theme = {
  normal = {
    a = { fg = c.bg, bg = c.blue, gui = "bold" },
    b = { fg = c.fg, bg = c.bg_dark },
    c = { fg = c.fg_dim, bg = c.bg_dim },
  },
  insert = {
    a = { fg = c.bg, bg = c.green, gui = "bold" },
    b = { fg = c.fg, bg = c.bg_dark },
    c = { fg = c.fg_dim, bg = c.bg_dim },
  },
  visual = {
    a = { fg = c.bg, bg = c.magenta, gui = "bold" },
    b = { fg = c.fg, bg = c.bg_dark },
    c = { fg = c.fg_dim, bg = c.bg_dim },
  },
  replace = {
    a = { fg = c.bg, bg = c.red, gui = "bold" },
    b = { fg = c.fg, bg = c.bg_dark },
    c = { fg = c.fg_dim, bg = c.bg_dim },
  },
  command = {
    a = { fg = c.bg, bg = c.yellow, gui = "bold" },
    b = { fg = c.fg, bg = c.bg_dark },
    c = { fg = c.fg_dim, bg = c.bg_dim },
  },
  terminal = {
    a = { fg = c.bg, bg = c.cyan, gui = "bold" },
    b = { fg = c.fg, bg = c.bg_dark },
    c = { fg = c.fg_dim, bg = c.bg_dim },
  },
  inactive = {
    a = { fg = c.fg_subtle, bg = c.bg_dark },
    b = { fg = c.fg_subtle, bg = c.bg_dim },
    c = { fg = c.fg_muted, bg = c.bg_dim },
  },
}

return theme
