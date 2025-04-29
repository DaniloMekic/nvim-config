return { 
  {
    "neovim/nvim-lspconfig",
    init = function() 
      local lsp_config_path = require("lazy.core.config").options.root .. "/nvim-lspconfig"

      -- INFO `prepend` ensures the configs are loaded before user's LSP configs defined in nvim/lsp/
      vim.opt.runtimepath:prepend(lsp_config_path)
    end
  }
}
