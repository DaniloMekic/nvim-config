return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {},
  keys = {
    { "<Leader>ff", function () require("fzf-lua").files() end, desc = "Find Files in CWD" }
  }
}
