return { 
  "neovim/nvim-lspconfig",
  config = function()
    vim.lsp.config("*", {})
    vim.lsp.enable({
      "jdtls",
      "clangd",
      "lua_ls",
      "html",
      "cssls",
      "ts_ls",
      "basedpyright",
      "ruff"
    })
  end
}
