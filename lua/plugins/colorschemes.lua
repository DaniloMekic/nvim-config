return {
  {
    "ellisonleao/gruvbox.nvim",
    enabled = true,
    lazy = false,
    priority = 1000,
    opts = {},
    init = function ()
        vim.cmd([[colorscheme gruvbox]])
    end
  },
  {
    "rebelot/kanagawa.nvim",
    url = "https://github.com/rebelot/kanagawa.nvim",
    enabled = false,
    lazy = false,
    priority = 1000,
    opts = {
      theme = "dragon"
    },
    init = function ()
        vim.cmd([[colorscheme kanagawa-dragon]])
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
