



vim.g.mapleader = " "


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
