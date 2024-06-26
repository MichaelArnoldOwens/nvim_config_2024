vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.cursorline = true
vim.opt.autoread = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.opt.hlsearch = true
-- clear search
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- run current file with python
vim.keymap.set("n", "<leader>rp", ":!python3 %<cr>")

-- save file on <C-s>
vim.keymap.set({ "n", "i", "v" }, "<C-s>", "<Cmd>w!<CR>")

-- Yank to the system clipboard
vim.api.nvim_set_keymap("n", "<leader>y", '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<leader>y", '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>Y", '"+Y', { noremap = true, silent = true })

-- Paste from the system clipboard
vim.api.nvim_set_keymap("n", "<leader>p", '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<leader>p", '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>P", '"+P', { noremap = true, silent = true })

-- Delete to the system clipboard
vim.api.nvim_set_keymap("n", "<leader>d", '"+d', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<leader>d", '"+d', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>D", '"+D', { noremap = true, silent = true })

-- Resize splits
vim.api.nvim_set_keymap("n", "<S-Left>", "<Cmd>vertical resize -2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-Right>", "<Cmd>vertical resize +2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-Up>", "<Cmd>resize -2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-Down>", "<Cmd>resize +2<CR>", { noremap = true, silent = true })
