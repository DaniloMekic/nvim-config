return {
    "stevearc/conform.nvim",

    ---@module "conform"
    ---@type conform.setupOpts
    opts = {
        -- Formatters are automatically installed with Mason via mason-conform plugin
        formatters_by_ft = {
            python = { "isort", "black" },
            javascript = { "prettierd", "prettier", stop_after_first = true },
        },

        -- Setup autocommand for BufWritePre event
        format_on_save = {
            -- These options will be passed to conform.format()
            timeout_ms = 500,
            lsp_format = "fallback",
        },
    },
}
