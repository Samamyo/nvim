---@diagnostic disable-next-line: missing-fields
local client = vim.lsp.start_client({
    name = "testLsp",
    cmd = { os.getenv("HOME") .. "/projects/learningGo/lspGo/main" },
    -- on_attach = require("")
})

if not client then
    vim.notify("hey, why no client?")
    return
end

vim.api.nvim_create_autocmd("FileType", {
    pattern = "markdown",
    callback = function()
        vim.lsp.buf_attach_client(0, client)
    end,
})
