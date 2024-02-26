vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup()

vim.keymap.set('n', '<c-e>', ':NvimTreeFindFileToggle<CR>')
vim.keymap.set('n', '<C-Left>', '<C-w><Left>', defaults)
vim.keymap.set('n', '<C-Right>', '<C-w><Right>', defaults)
