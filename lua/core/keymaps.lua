vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

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
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- run current file with python
vim.keymap.set("n", "<leader>rp", ":!python3 %<cr>")

-- save file on <C-s>
vim.keymap.set({"n", "i", "v"}, "<C-s>", "<Cmd>w!<CR>")
