-- Set your desired leader, if different from space.
vim.g.mapleader = ' '
vim.g.localmapleader = ' '

-- This file does not need to be changed below this comment.
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({ spec = { import = "plugins" } })

require('config.options')
require('config.keymaps')
