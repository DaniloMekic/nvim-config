return {{
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function () 
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = {
        -- Languages
        "c",
        "java",
        "python",
        "lua",
        "javascript",
        "vim", -- Vimscript
        "sql",
        "bash",
        "awk",
        -- Markup
        "markdown",
        "markdown_inline",
        "html",
        "css",
        "json",
        "yaml",
        "toml",
        "csv", -- CSV, PSV, TSV
        -- Configs & Configuration Languages
        "git_config", "gitattributes", "gitcommit", "gitignore",
        "ssh_config",
        "tmux",
        "passwd",
        "hyprlang", -- Hypr Configuration Language
        "properties", -- Java Properties File
        -- Docs
        "vimdoc",
        "luadoc",
        "query"
      },
      sync_install = false,
      highlight = {
        enable = true
      },
      indent = {
        enable = true -- See :help indent-expression and :help 'indentexpr'
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          -- Set to `false` to disable one of the mappings
          init_selection = "gnn",
          node_incremental = "grn",
          scope_incremental = "grc",
          node_decremental = "grm",
        },
      },
    })
  end
}}
