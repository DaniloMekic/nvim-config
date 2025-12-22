require("config.commands")
require("config.diagnostics")
require("config.keymap")
require("config.lazy")
require("config.lsp")
require("config.options")
require("config.variables")

vim.lsp.enable({
    "plsql",

    -- For possible future integration with new Neovim 0.11+ LSP API
    -- Manual JDTLS loading and configuration via `nvim/lua/config/java.lua`
    --"jdtls",
})
