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
