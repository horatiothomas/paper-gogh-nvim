# paper-gogh.nvim

A light Neovim colorscheme based on the [Gogh](https://github.com/Gogh-Co/Gogh) **Paper** terminal palette — warm cream paper, black ink, and clear accents.

## Palette

| Role | Hex | Swatch |
|------|-----|--------|
| Background | `#f2eede` | paper |
| Foreground | `#000000` | ink |
| Red | `#cc3e28` | |
| Green | `#216609` | |
| Yellow | `#b58900` | |
| Blue | `#1e6fcc` | |
| Magenta | `#5c21a5` | |
| Cyan | `#158c86` | |
| Comment / dim | `#555555` | |

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
require("paper_gogh").setup({ transparent = true })
require("paper_gogh").load()
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

Colors from the [Paper](https://github.com/Gogh-Co/Gogh/blob/master/installs/paper.sh) theme in [Gogh](https://github.com/Gogh-Co/Gogh).

## Disclaimer

This was one shot AI coded

## License

MIT
