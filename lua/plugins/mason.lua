return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      "vimls",                    -- VimScript
      "jdtls",                    -- Java
      "clangd",                   -- C, C++
      "lua_ls",                   -- Lua
      "html",                     -- HTML
      "cssls",                    -- CSS
      "ts_ls",                    -- TypeScript
      "basedpyright",             -- Python LSP
      "ruff",                     -- Python Linter/Code Formatter
      "bashls",                   -- Bash
      "markdown_oxide",           -- Markdown
      "lemminx",                  -- XML
      "yamlls",                   -- YAML
      "taplo"                     -- TOML
    },
    automatic_enable = {
      exclude = { "jdtls" } -- See `nvim/ftplugin/java.lua`
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
