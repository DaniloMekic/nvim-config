---@type vim.lsp.Config
return {
  -- Run basedpyright in virtual environment
  cmd = { "uv", "run", "basedpyright-langserver", "--stdio" }
}
