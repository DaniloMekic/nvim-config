return {
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require("java").setup({
        jdk = {
          auto_install = false
        }
      })
    end
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
    }
  }
}
