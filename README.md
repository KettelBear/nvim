# KettelBear's SIMPLE Neovim Config

### Overview

This is my simplistic [Neovim](https://neovim.io/) configuration. The idea, in
addition to minimalism, is for it to take care of itself. In other words, if
you download Neovim, and have this in your `.config/nvim` then the plugins will
download and just work.

That's not to say that you should not configure it. One of my biggest hopes,
given the organization, is that you understand it easily, and start adjusting
it for yourself.

Now that the summary is out of the way, it is time to mention the few things
you might concern yourself with:

- `lua/config/init.lua`
  - But _only_ to set your leader if different from space.
- `lua/plugins/`
  - Add additional plugins here.
- `lua/config/options.lua`
  - Neovim options like line numbers and search highlighting.
- `lua/config/keymaps.lua`
  - Custom keymaps, with a few configured for you.
- `after/plugin/`
  - Plugin configuration

Now that we've covered a small introduction, let's get on to the requirements
that should be installed ahead of time.

### Requirements

- Neovim >= 0.9.4 (What I installed everything with, so I don't guarantee that
it will work before this)
- [Git](https://git-scm.com/) >= 2.19.0
- [ripgrep](https://github.com/BurntSushi/ripgrep) [Optional, but recommended]

### Installation

Installation for Linux

```
git clone https://github.com/KettelBear/nvim.git ~/.config/nvim
```

You'll probably want to `rm -rf .git/` from within `.config/nvim` afterwards.

### Starting Plugins

##### [vim-fugutive](https://github.com/tpope/vim-fugitive)

All things Git within Neovim. The starting keymap for this is
`<leader>gs`.

##### [gitsigns](https://github.com/lewis6991/gitsigns.nvim)

A little extra flare to show changes live, and git blame.

##### [harpoon](https://github.com/ThePrimeagen/harpoon)

Fast file navigation. *You don't need a file tree!*

##### [lsp-zero](https://github.com/VonHeikemen/lsp-zero.nvim)

Convenient LSP management with automated server installation via Mason. If you
want to learn more about the additional plugins, and set up, you can start
[here](https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guides/lazy-loading-with-lazy-nvim.md).

##### [lualine](https://github.com/nvim-lualine/lualine.nvim)

Status line along the bottom of Neovim. You will probably want some type of
[Nerd Font](https://www.nerdfonts.com/) for everything to cooperate nicely.

##### [telescope](https://github.com/nvim-telescope/telescope.nvim)

Incredible file navigation. This is where `ripgrep` comes into play. While
Neovim is open, you can search all files with default `<leader>sf` (search
files), or respect your `.gitignore` file with a search `<leader>gf`.

##### [tokyonight](https://github.com/folke/tokyonight.nvim)

Just my preferred colorscheme.

##### [treesitter](https://github.com/nvim-treesitter/nvim-treesitter)

Incredile syntax highlighting.

### Closing Thoughts

Have fun!

