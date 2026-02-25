-- Load lazy.nvim FIRST
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)

-- THEN your settings



vim.g.mapleader = " "

require("lazy").setup({
  { "folke/which-key.nvim", event = "VeryLazy" }

})

vim.cmd [[
  highlight Normal guibg=none
  highlight NonText guibg=none
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
]]

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.fillchars:append({ eob = "." })
vim.opt.signcolumn = "yes"   -- prevents shifting when diagnostics appear
