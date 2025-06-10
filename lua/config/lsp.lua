--- Global LSP Configuration
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspConfig", {}),
  callback = function(e)
    local bufopts = {buffer = e.buf }
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
  end
})
