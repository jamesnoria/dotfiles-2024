vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true

vim.opt.backspace = '2'
vim.opt.showcmd = true

vim.opt.backspace = '2'
vim.opt.showcmd = true

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

-- use spaces for tabs and whatnot
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- save
-- vim.keymap.set('n', '<silent><c-s>', ':<c-u>update<cr>', {noremap = true}
-- vim.keymap.set('n', '<C-s>', ':w<CR>', {noremap=true})
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>a', {noremap=true})
