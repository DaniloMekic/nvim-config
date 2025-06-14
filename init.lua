require("config.lazy")
require("config.options")
require("config.commands")
require("config.keymap")
require("config.variables")
require("config.diagnostics")
require("config.lsp")

-- Java
-- Manual JDTLS loading and configuration via `nvim/lua/config/java.lua`
require("config.java")
vim.lsp.enable({ "jdtls" })
