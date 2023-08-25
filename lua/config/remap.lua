vim.keymap.set('n', '<Leader>q', ':q<CR>')

-- Move up & down more naturally in wrap
vim.keymap.set('', 'j', 'gj')
vim.keymap.set('', 'k', 'gk')

-- Remap escape key
vim.keymap.set('n', '<Leader>jk', '<ESC>')
vim.keymap.set('n', '<Leader>JK', '<ESC>')

-- Remap window movements
vim.keymap.set('n', '<Leader>vsp', ':vsplit<CR>')
vim.keymap.set('n', '<Leader>sp', ':split<CR>')