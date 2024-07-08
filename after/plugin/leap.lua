vim.keymap.set("n", "s", function()
	require("leap").leap({
		target_windows = require("leap.user").get_focusable_windows(),
	})
end)

vim.api.nvim_set_hl(0, "LeapBackdrop", { link = "Comment" }) -- or some grey
vim.api.nvim_set_hl(0, "LeapMatch", {
	-- For light themes, set to 'black' or similar.
	fg = "white",
	bold = true,
	nocombine = true,
})

vim.api.nvim_set_hl(0, "LeapLabelPrimary", { fg = "white", bg = "blue", bold = true })
vim.api.nvim_set_hl(0, "LeapLabelSecondary", { fg = "white", bg = "red", bold = true })
