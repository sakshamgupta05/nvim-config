local keymap = vim.keymap

keymap.set('n', '<Leader>q', ':q<CR>')

-- Move up & down more naturally in wrap
keymap.set('', 'j', 'gj')
keymap.set('', 'k', 'gk')

-- Remap escape key
keymap.set('i', 'jk', '<ESC>')
keymap.set('i', 'JK', '<ESC>')

-- Window management
keymap.set('n', '<Leader>vsp', ':vsplit<CR>', { silent = true })
keymap.set('n', '<Leader>sp', ':split<CR>', { silent = true })
keymap.set('n', '<Leader>w', '<C-w>')
keymap.set('n', '<Leader>te', ':tabedit<CR>', { silent = true })

keymap.set('n', '<Leader><space>', ':nohlsearch<CR>', { silent = true })

-- Select all
keymap.set('n', '<Leader>a', 'gg<S-v>G')

-- LSP
keymap.set('n', '<Leader>k', vim.lsp.buf.hover)
keymap.set('n', '<Leader>gd', vim.lsp.buf.definition)
keymap.set('n', '<Leader>ca', vim.lsp.buf.code_action)



----
-- Plugins
----

--- todo-comments.nvim
-- Show TODO in telescope
keymap.set('n', '<leader>todo', ':TodoTelescope keywords=TODO,FIXME<CR>')

--- Mason
-- Open mason
keymap.set('n', '<leader>cm', '<cmd>Mason<cr>')
