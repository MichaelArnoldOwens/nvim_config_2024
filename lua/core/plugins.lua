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
  -- TODO: 'neovim/nvim-lspconfig',
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
  {
      "kylechui/nvim-surround",
      version = "*", -- Use for stability; omit to use `main` branch for the latest features
      event = "VeryLazy",
      config = function()
          require("nvim-surround").setup({
              -- Configuration here, or leave empty to use defaults
          })
      end
  },
  'tpope/vim-sensible',
  'tpope/vim-commentary',
  'tpope/vim-fugitive',
  -- line indent highlights!
  {
    "lukas-reineke/indent-blankline.nvim",
    version = "2.20.7",
    opts = {
      indentLine_enabled = 1,
      filetype_exclude = {
        "help",
        "terminal",
        "lazy",
        "lspinfo",
        "TelescopePrompt",
        "TelescopeResults",
        "mason",
        "nvdash",
        "nvcheatsheet",
        "",
      },
      buftype_exclude = { "terminal" },
      show_trailing_blankline_indent = false,
      show_first_indent_level = true,
      show_current_context = true,
      show_current_context_start = true,
    },
  },
}
local opts = {}

require("lazy").setup(plugins, opts)
