# sugarpunk.nvim

## Neovim colorscheme based on the palette of [Honeypunk](https://github.com/tatteddev/Honeypunk).

![Screenshot](https://github.com/nikita-edel/sugarpunk.nvim/blob/main/.github_assets/sugarpunk.png)

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

## Integrated plugins

- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [todo-comments.nvim](https://github.com/folke/todo-comments.nvim)
- [noice.nvim](https://github.com/folke/noice.nvim)
- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)


## Showcase
https://github.com/user-attachments/assets/0bc164ed-e91d-4d16-8eee-49b58a7890d6



