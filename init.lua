require("config.paths")
require("config.lazy")
require("config.options")
require("config.commands")
require("config.keymaps")
require("config.variables")

-- LSP Servers
vim.lsp.enable({
  "jdtls",
  "lua_ls",
  "html",
  "cssls",
  "ts_ls"
})
