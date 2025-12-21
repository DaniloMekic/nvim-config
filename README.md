Configuration files should be placed at:
- `$XDG_CONFIG_HOME/nvim/`


# External Dependencies
- **Lua**: https://www.lua.org
- **Python**: https://www.python.org
- **Java**
  - **OpenJDK**: https://wiki.archlinux.org/title/Java
  - **Maven**: https://maven.apache.org
- **C/C++**
  - **GCC**: https://gcc.gnu.org
  - **MinGW-w64**: https://www.mingw-w64.org
- **Go**: https://go.dev/doc/install
- **Mason**-specific: https://github.com/mason-org/mason.nvim#requirements
- **fzf**: https://github.com/junegunn/fzf
- **ShellCheck** for Bash LS: https://github.com/koalaman/shellcheck
- `tree-sitter-cli`: https://archlinux.org/packages/extra/x86_64/tree-sitter-cli/

# Environment Variables and Paths
- Paths used internally are set in `nvim/lua/config/paths.lua`.

# Plugins
- **File Explorer**: [Yazi](https://github.com/sxyazi/yazi) + [yazi.nvim](https://github.com/mikavilpas/yazi.nvim)
- **Language Server Protocol** (LSP) **Server Management**: [Mason](github.com/mason-org/mason.nvim)
- **Code Formatting**: [conform](https://github.com/stevearc/conform.nvim), [mason-conform](https://github.com/zapling/mason-conform.nvim)
- **Linting**: [nvim-lint](https://github.com/mfussenegger/nvim-lint)
- **Code Completion Engine**: [blink.cmp](https://github.com/Saghen/blink.cmp)
- **Snippet Engine**: [LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- **Debug Adapter Protocol** (DAP) **Client**: [nvim-dap](https://github.com/mfussenegger/nvim-dap)
- **Statusline**: [Lualine](https://github.com/nvim-lualine/lualine.nvim)
- **Pattern Matching**: [Vim Match-up](https://github.com/andymass/vim-matchup)
