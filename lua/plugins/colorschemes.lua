return {
  {
    "rebelot/kanagawa.nvim",
    url = "https://github.com/rebelot/kanagawa.nvim",
    enabled = true,
    lazy = false,
    priority = 1000,
    opts = {
      theme = "wave"
    },
    init = function ()
      vim.cmd([[colorscheme kanagawa]])
    end
  },
  {
    "catppuccin/nvim",
    url = "https://github.com/catppuccin/nvim",
    enabled = false,
    lazy = false,
    priority = 1000,
    name = "catppuccin",
    opts = {}
  },
  {
    "folke/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim",
    enabled = false,
    lazy = false,
    priority = 1000,
    opts = {}
  }
}
