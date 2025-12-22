---@type vim.lsp.Config
return {
    cmd = {
        "java",
        "-jar",
        vim.fn.expand("~/repo/plsql-ls/target/server-all.jar")
    },
    filetypes = { "plsql" },
}
