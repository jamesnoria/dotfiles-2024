require("core.keymaps")
require("core.plugins")
require("core.plugin_config")

vim.wo.number = true
vim.opt.showmode = false

-- Set listchars
vim.o.listchars = 'nbsp:␣,eol:↲,tab:»\\ ,extends:›,precedes:‹,trail:•'

-- Set showbreak
vim.o.showbreak = '↳ '

-- Disable number column in visual mode
vim.api.nvim_exec([[
  augroup my_visuallistchars
    autocmd!
    autocmd CursorMoved * if mode() =~# "[vV\<C-v>]" | set list | else | set nolist | endif
  augroup END
]], false)
