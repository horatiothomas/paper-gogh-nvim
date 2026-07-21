# paper-gogh.nvim

A Neovim colorscheme based on the [Gogh](https://github.com/Gogh-Co/Gogh) **Paper** and **PaperColor Dark** terminal palettes.

## Palettes

- Light: Gogh Paper with `#f2eede` background and `#000000` foreground
- Dark: Gogh PaperColor Dark with `#1c1c1c` background and `#d0d0d0` foreground

The palette follows `vim.o.background`.

## Requirements

- Neovim 0.8+
- `termguicolors` enabled

## Installation

### lazy.nvim

```lua
{
  "horatiothomas/paper-gogh-nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("paper_gogh").setup({
      transparent = false,
      italic_comments = true,
      terminal_colors = true,
    })
    vim.cmd.colorscheme("paper-gogh")
  end,
}
```

### packer.nvim

```lua
use({
  "horatiothomas/paper-gogh-nvim",
  config = function()
    vim.cmd.colorscheme("paper-gogh")
  end,
})
```

## Usage

```vim
colorscheme paper-gogh
```

Or from Lua:

```lua
vim.o.background = "dark"
require("paper_gogh").setup({ transparent = true })
require("paper_gogh").load()
```

To use the light variant, set `vim.o.background = "light"` before loading the colorscheme.

### Follow macOS appearance

```lua
local function get_macos_appearance()
  local handle = io.popen("defaults read -g AppleInterfaceStyle 2>/dev/null")
  if not handle then
    return "dark"
  end

  local result = handle:read("*a") or ""
  handle:close()
  return result:match("Dark") and "dark" or "light"
end

vim.o.background = get_macos_appearance()
require("paper_gogh").setup({ transparent = true })
vim.cmd.colorscheme("paper-gogh")
```

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `transparent` | `false` | Clear main background groups |
| `italic_comments` | `true` | Italicize comments |
| `terminal_colors` | `true` | Set `:terminal` ANSI colors |

## Lualine

```lua
require("lualine").setup({
  options = {
    theme = require("paper_gogh.lualine"),
  },
})
```

## Supported highlights

- Treesitter
- LSP diagnostics & semantic tokens
- GitSigns
- Telescope
- Neo-tree / nvim-tree
- nvim-cmp
- Which-key
- Indent Blankline / IBL
- Bufferline
- Lazy / Mason
- Notify, Flash, Trouble
- Mini statusline / indentscope
- Render Markdown
- Rainbow delimiters

## Credits

Colors from the [Paper](https://github.com/Gogh-Co/Gogh/blob/master/installs/paper.sh) and [PaperColor Dark](https://github.com/Gogh-Co/Gogh/blob/master/installs/papercolor-dark.sh) themes in [Gogh](https://github.com/Gogh-Co/Gogh).

## Disclaimer

This was one shot AI coded

## License

MIT
