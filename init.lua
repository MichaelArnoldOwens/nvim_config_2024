vim.opt.number = true
vim.opt.relativenumber = true
-- indent guides
-- vim.opt.listchars = { tab = "│ ", leadmultispace = '│∙∙∙', trail = "-" }
-- vim.opt.list = true

require("core.keymaps")
require("core.plugins")
require("core.hooks")

