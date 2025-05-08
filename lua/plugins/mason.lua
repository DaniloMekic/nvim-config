return { 
  {
    "mason-org/mason.nvim",
    opts = {},
    config = true
  },
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = { "neovim/nvim-lspconfig" },
    opts = {}
  }
}
