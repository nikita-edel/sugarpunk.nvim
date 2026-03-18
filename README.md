# sugarpunk.nvim

## Neovim theme based on the palette of [Honeypunk](https://github.com/tatteddev/Honeypunk).

// insert screenshot here

## Installation, Configuration, Usage

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
return {
  "nikita-edel/sugarpunk.nvim",
  priority = 1000,
  config = function()
  --[[ this is optional, if you want to change something, these are the defaults
    require("sugarpunk").setup({
        styles = {
          comments = { italic = true, bold = false },
          keywords = { italic = false, bold = false },
          booleans = { italic = false, bold = false },
          functions = { italic = false, bold = false },
          variables = { italic = false, bold = false },
        },
      overrides = {
                Normal = { bg = "#123456" },
                Macro  = { fg = "#654321" },
      },
    }) ]]

    vim.cmd("colorscheme sugarpunk") -- or put this in init.lua
  end,
}
```

### [vim-plug](https://github.com/junegunn/vim-plug)
```lua
Plug "nikita-edel/sugarpunk.nvim"
```

### [packer](https://github.com/wbthomason/packer.nvim)
```lua
use("nikita-edel/sugarpunk.nvim")
```

The same configuration and usage for both.

## Requirements
- Neovim >= 0.7

## implemented plugins
// list the plugins here
