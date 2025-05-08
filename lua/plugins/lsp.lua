return {
  { 
    "neovim/nvim-lspconfig" 
  },
  {
    "mason-org/mason.nvim",
    opts = {}
  },
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      "mason-org/mason.nvim"
    },
    opts = {
      automatic_enable = {
        "jdtls",
        "clangd",
        "lua_ls",
        "html",
        "cssls",
        "ts_ls",
        "basedpyright",
        "ruff"
      }
    }
  }
}
