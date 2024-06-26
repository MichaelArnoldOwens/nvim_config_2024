-- save all buffers when leaving buffer
vim.api.nvim_create_autocmd({ "FocusLost", "BufLeave" }, {
    callback = function()
        local buftype = vim.bo.buftype
        if buftype ~= 'nofile' and buftype ~= 'acwrite' then
            vim.cmd("silent! wa!")
        end
    end,
})
