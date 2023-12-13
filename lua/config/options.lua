vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

-- Vertical Column Bar
-- vim.opt.colorcolumn = "80"
-- I wonder if there is an easier way to do this?
-- vim.cmd("highlight ColorColumn ctermbg=darkgrey guibg=darkgrey")


-- I just want to know when a file is tabs instead of spaces and if there are
-- any trailing spaces.
vim.opt.list = true
vim.opt.lcs = { tab = ' »', trail = '·' }

-- If you really want to highlight trailing spaces, uncomment these two lines.
-- vim.cmd("highlight TrailingSpaces ctermbg=red guibg=red")
-- vim.cmd("match TrailingSpaces /\\s\\+$/")

vim.opt.mouse = ''
