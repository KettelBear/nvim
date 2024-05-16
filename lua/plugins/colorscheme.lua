return {
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('tokyonight').setup({
        transparent = true,
        styles = {
          comments = { italic = true },
          keywords = { italic = true },
        },
      })
    end
  },
  {
    'bluz71/vim-nightfly-colors',
    name = 'nightfly',
    lazy = false,
    priority = 1000,
  },
  {
    'bluz71/vim-moonfly-colors',
    name = 'moonfly',
    lazy = false,
    priority = 1000,
    transparent = true,
  },
  {
    'Mofiqul/dracula.nvim',
    name = 'dracula',
    lazy = false,
    priority = 1000,
    transparent = true,
  },
  {
    'EdenEast/nightfox.nvim',
    name = 'nightfox',
    lazy = false,
    priority = 1000,
    transparent = true,
  },
  {
    'scottmckendry/cyberdream.nvim',
    lazy = false,
    priority = 1000,
    config = function ()
      require('cyberdream').setup({
        transparent = true,
        italic_comments = true,
        boderless_telescope = true,
      })
    end
  },
}
