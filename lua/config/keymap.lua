-- Explore `h: defaults`
-- Useful defaults:
---- Display hover info about symbol under the cursor: `:help K` and `:help vim.lsp.buf.hover()`
---- Go to definition: `:help gd`
---- Comment lines: `:help gc`
---- References: `:help grr`

vim.g.mapLeader = " "

vim.keymap.set("n", "<Leader>w", ":write<CR>")

-- QuickFix List
-- See `:help default-mappings`; `:help [q`; `:help ]q`
vim.keymap.set(
    "n",
    "<Leader>q",
    function ()
        -- Get list of all windows
        local windows = vim.api.nvim_list_wins()
        -- Check if any is a quickfix window
        for _, window in pairs(windows) do
            local buffer = vim.api.nvim_win_get_buf(window)
            if vim.bo[buffer].buftype == "quickfix" then
                vim.cmd("cclose")
                return
            end
        end
        -- If none found, open quickfix
        vim.cmd("copen")
    end,
    { desc = "Toggle quickfix window" })
