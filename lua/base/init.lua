vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.g.mapleader = " "

require("base.remap")

local TAB_WIDTH = 2
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.smarttab = true
vim.opt.tabstop = TAB_WIDTH
vim.opt.shiftwidth = TAB_WIDTH
vim.opt.expandtab = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.ai = true -- Auto indent
vim.opt.si = true -- Smart indent
vim.opt.backspace = 'start,eol,indent'
vim.opt.cursorline = true
vim.opt.nu = true
vim.opt.rnu = true
vim.opt.termguicolors = true

-- OS Configs
if vim.loop.os_uname().sysname == "Darwin" then
  require('base.os.macos')
else
  require('base.os.linux')
end

vim.lsp.buf.format({ async = true })
