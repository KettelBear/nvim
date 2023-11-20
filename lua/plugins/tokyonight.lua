local tokyoptions = {
  transparent = true,
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
  },
}

return {
	'folke/tokyonight.nvim',
	lazy = false,
	priority = 1000,
  config = function()
    require('tokyonight').setup(tokyoptions)
    vim.cmd([[colorscheme tokyonight-night]])
  end
}
