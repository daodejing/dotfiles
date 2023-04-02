local opts = { noremap = true, silent = true }
vim.keymap.set('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, opts)
vim.keymap.set('i', 'jk', '<ESC>', opts)
vim.keymap.set('i', '<C-e>', '<C-o>a', opts)
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)
vim.keymap.set('n', '<leader>S', ':so<CR>', { noremap = true })

vim.keymap.set('v', 'v', '<ESC>', opts)
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

vim.keymap.set('n', '<S-d>', ':Bdelete<CR>', opts)
vim.keymap.set('n', '<leader>bd', ':bd<CR>', opts)
vim.keymap.set('n', '<S-l>', ':bnext<CR>', opts)
vim.keymap.set('n', '<S-h>', ':bprevious<CR>', opts)
