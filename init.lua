require("config.lazy")
require("config.options")
require("config.commands")
require("config.keymap")
require("config.variables")
require("config.diagnostics")
require("config.lsp")

-- Manual JDTLS loading and configuration via `nvim/lsp/jdtls.lua`
-- Other LSP servers and managed with Mason
vim.lsp.enable({ "jdtls" })
