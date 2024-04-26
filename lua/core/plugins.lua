local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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
  -- fuzzy finder
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  -- colorscheme
  -- {"catppuccin/nvim", name = "catppuccin", priority = 1000},
  {'rose-pine/neovim', name = 'rose-pine', variant = 'auto' },
  {
    "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      
      configs.setup({
          ensure_installed = { "python", "c", "lua", "vim", "vimdoc", "query", "javascript", "html" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end
  },
  -- { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} }
}
local opts = {}

require("lazy").setup(plugins, opts)
