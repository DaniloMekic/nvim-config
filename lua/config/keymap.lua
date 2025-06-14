-- Explore `h: defaults`
-- Useful defaults:
---- `:help K` and `:help vim.lsp.buf.hover()`

vim.g.mapLeader = " "

-- Buffers Navigation
-- See `:help CTRL-^` for switching to the previously edited file.
vim.keymap.set("n", "<Leader><Tab>", ":bnext<CR>")                                                 -- Switch window to the next buffer.
vim.keymap.set("n", "<Leader><S-Tab>", ":bprevious<CR>")                                           -- Switch window to the previous buffer.

-- Telescope
local telescope = require("telescope.builtin")
vim.keymap.set("n", "<Leader>ff", telescope.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<Leader>fg", telescope.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<Leader>fb", telescope.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<Leader>fh", telescope.help_tags, { desc = "Telescope help tags" })

-- Oil
local oil = require("oil")
vim.keymap.set("n", "<Leader>e", function () oil.toggle_float() end)

-- Diagnostics
vim.keymap.set("n", "<Leader>ca", function () vim.lsp.buf.code_action() end, { desc = "LSP code action" })
