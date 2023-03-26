# Mosel Neovim Colorscheme

A neovim colorscheme written in `lua`. The colors were selected with the following priorities in mind:

- **High contrast**
- **Harmonic color group**
- **Semantic highlighting**:
  - highlight important semantics like variables and function calls instead of keywords
  - the color `red` is only used to display errors

## Preview

Active Buffer: Elixir, inactive buffer: TypeScript React

![Screenshot 1!](shot1.png "Screenshot 1")

Active Buffer: Lua, inactive buffers: Lua and Markdown

![Screenshot 2!](shot2.png "Screenshot 1")

## Features

The colorscheme supports the following languages, features and plugins:

- Different colors for active and inactive buffers
- Treesitter
- Neovim LSP
- Customizations for `TypeScript React`, `Elixir`, `Markdown`
- Plugins
  - Lualine
  - nvim-cmp
  - copilot.vim
  - nvim-dap
  - nvim-dap-ui

### Limitations

- `termguicolors` required
- Neovim >= `v0.8.0`
