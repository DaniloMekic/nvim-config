return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      "jdtls",
      "clangd",
      "lua_ls",
      "html",
      "cssls",
      "ts_ls",
      "basedpyright",
      "ruff",
      "bashls",
      "markdown_oxide",
      "lemminx"
    },
    automatic_enable = {
      exclude = { "jdtls" } -- Manual loading and custom configuration. See `nvim/init.lua`
    }
  },
  dependencies = {
    {
      "mason-org/mason.nvim",
      opts = {}
    },
    "neovim/nvim-lspconfig"
  }
}
