-- Explore `h: defaults`
-- Useful defaults:
---- Display hover info about symbol under the cursor: `:help K` and `:help vim.lsp.buf.hover()`
---- Go to definition: `:help gd`
---- Comment lines: `:help gc`
---- References: `:help grr`

vim.g.mapLeader = " "

-- Buffers Navigation
-- See `:help CTRL-^` for switching to the previously edited file.
vim.keymap.set("n", "<Leader><Tab>", ":bnext<CR>")                                                 -- Switch window to the next buffer.
vim.keymap.set("n", "<Leader><S-Tab>", ":bprevious<CR>")                                           -- Switch window to the previous buffer.

-- Oil
local oil = require("oil")
vim.keymap.set("n", "<Leader>e", function () oil.toggle_float() end)
