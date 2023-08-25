vim.g.mapleader = " "

require("config.remap")

local TAB_WIDTH = 2
vim.bo.tabstop = TAB_WIDTH
vim.bo.shiftwidth = TAB_WIDTH
vim.bo.expandtab = true

vim.wo.cursorline = true
vim.wo.nu = true
vim.wo.rnu = true

vim.o.splitbelow = true
vim.o.splitright = true