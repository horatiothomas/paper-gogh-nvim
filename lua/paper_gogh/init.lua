local M = {}

local defaults = {
  transparent = false,
  italic_comments = true,
  terminal_colors = true,
}

M.config = vim.deepcopy(defaults)

local function apply_terminal_colors(c)
  vim.g.terminal_color_0 = c.black
  vim.g.terminal_color_1 = c.red
  vim.g.terminal_color_2 = c.green
  vim.g.terminal_color_3 = c.yellow
  vim.g.terminal_color_4 = c.blue
  vim.g.terminal_color_5 = c.magenta
  vim.g.terminal_color_6 = c.cyan
  vim.g.terminal_color_7 = c.white
  vim.g.terminal_color_8 = c.bright_black
  vim.g.terminal_color_9 = c.bright_red
  vim.g.terminal_color_10 = c.bright_green
  vim.g.terminal_color_11 = c.bright_yellow
  vim.g.terminal_color_12 = c.bright_blue
  vim.g.terminal_color_13 = c.bright_magenta
  vim.g.terminal_color_14 = c.bright_cyan
  vim.g.terminal_color_15 = c.bright_white
end

local function apply_options(groups, c, opts)
  if opts.transparent then
    local clear_bg = {
      "Normal",
      "NormalNC",
      "SignColumn",
      "FoldColumn",
      "LineNr",
      "CursorLineNr",
      "EndOfBuffer",
      "NeoTreeNormal",
      "NeoTreeNormalNC",
      "NvimTreeNormal",
    }
    for _, name in ipairs(clear_bg) do
      if groups[name] then
        groups[name].bg = c.none
      end
    end
  end

  if not opts.italic_comments and groups.Comment then
    groups.Comment.italic = false
  end
end

function M.setup(opts)
  M.config = vim.tbl_deep_extend("force", defaults, opts or {})
end

function M.load(opts)
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.o.background = "light"
  vim.g.colors_name = "paper-gogh"

  local config = vim.tbl_deep_extend("force", M.config, opts or {})
  local c = require("paper_gogh.palette").colors
  local groups = require("paper_gogh.highlights").groups(c)

  apply_options(groups, c, config)

  for name, spec in pairs(groups) do
    vim.api.nvim_set_hl(0, name, spec)
  end

  if config.terminal_colors then
    apply_terminal_colors(c)
  end
end

function M.get_palette()
  return require("paper_gogh.palette").colors
end

return M
