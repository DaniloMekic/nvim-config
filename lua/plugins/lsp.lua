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
      "ruff"
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
