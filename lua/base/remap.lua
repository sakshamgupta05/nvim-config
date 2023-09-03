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

-- Tab management
keymap.set('n', '<Leader>tt', ':tabnew<CR>', { silent = true })
keymap.set('n', '<Leader>tj', ':tabp<CR>', { silent = true })
keymap.set('n', '<Leader>tk', ':tabn<CR>', { silent = true })
keymap.set('n', '<Leader>th', ':tabfirst<CR>', { silent = true })
keymap.set('n', '<Leader>tl', ':tablast<CR>', { silent = true })
keymap.set('n', '<Leader>tm', ':tabm<CR>', { silent = true })
keymap.set('n', '<Leader>td', ':tabclose<CR>', { silent = true })

keymap.set('n', '<Leader><space>', ':nohlsearch<CR>', { silent = true })

-- Select all
keymap.set('n', '<Leader>a', 'gg<S-v>G')

-- LSP
keymap.set('n', '<Leader>k', vim.lsp.buf.hover)
keymap.set('n', '<Leader>gd', vim.lsp.buf.definition)
keymap.set('n', '<Leader>gD', "<cmd>tab split | lua vim.lsp.buf.definition()<CR>")
keymap.set('n', '<Leader>ca', vim.lsp.buf.code_action)

-- Delete without copy
keymap.set('n', '<Leader>d', '"_d')
keymap.set('x', '<Leader>d', '"_d')
keymap.set('x', '<Leader>p', '"_dP')
keymap.set('n', '<Leader>c', '"_c')
keymap.set('x', '<Leader>c', '"_c')


----
-- Plugins
----

--- todo-comments.nvim
-- Show Todo in telescope
keymap.set('n', '<leader>todo', ':TodoTelescope keywords=TODO,FIXME<CR>')

--- Mason
-- Open mason
keymap.set('n', '<leader>cm', '<cmd>Mason<cr>')

--- Gitsigns
keymap.set('n', '<leader>hp', ':Gitsigns preview_hunk_inline<CR>')
keymap.set('n', '<leader>hs', ':Gitsigns stage_hunk<CR>')
keymap.set('n', '<leader>hr', ':Gitsigns reset_hunk<CR>')
keymap.set('n', '<leader>hu', ':Gitsigns undo_stage_hunk<CR>')
keymap.set('n', '<leader>hd', ':Gitsigns diffthis<CR>')
keymap.set('n', '<leader>tb', ':Gitsigns toggle_current_line_blame<CR>')
keymap.set('n', '<leader>hS', ':Gitsigns stage_buffer<CR>')
keymap.set('n', '<leader>hR', ':Gitsigns reset_buffer<CR>')
