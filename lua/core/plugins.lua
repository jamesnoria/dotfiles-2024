local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
   'wbthomason/packer.nvim',
   { "catppuccin/nvim", as = "catppuccin" },
   'nvim-tree/nvim-tree.lua',
   'nvim-tree/nvim-web-devicons',
   'nvim-lualine/lualine.nvim',
   'nvim-treesitter/nvim-treesitter',
   'bluz71/vim-nightfly-colors',
   'vim-test/vim-test',
   'lewis6991/gitsigns.nvim',
   'preservim/vimux',
   'christoomey/vim-tmux-navigator',
  -- completion
   'hrsh7th/nvim-cmp',
   'hrsh7th/cmp-nvim-lsp',
   'L3MON4D3/LuaSnip',
   'saadparwaiz1/cmp_luasnip',
   'rafamadriz/friendly-snippets',
   {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig"
   },
   {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    dependencies = { {'nvim-lua/plenary.nvim'} }
   },
   {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    opts = {}
  },
  {
    'rmagatti/goto-preview',
  },
  'f-person/git-blame.nvim',
   {
       "kdheepak/lazygit.nvim",
       dependencies = {
            "nvim-lua/plenary.nvim",
        },
    },
  'lewis6991/gitsigns.nvim',
  'm4xshen/autoclose.nvim',
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
  'mfussenegger/nvim-lint'
}


local opts = {}

require("lazy").setup(plugins, opts)
