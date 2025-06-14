-- Kanagawa
-- https://github.com/rebelot/kanagawa.nvim
return {
  "rebelot/kanagawa.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    theme = "wave"
  },
  config = function()
    vim.cmd([[colorscheme kanagawa]])
  end
}

-- Catppuccin
-- https://github.com/catppuccin/nvim
-- return {
--   "catppuccin/nvim",
--   lazy = false,
--   name = "catppuccin",
--   priority = 1000,
--   config = function()
--     vim.cmd([[colorscheme catppuccin]])
--   end
-- }

-- Tokyo Night
-- https://github.com/folke/tokyonight.nvim
-- return {
--   "folke/tokyonight.nvim",
--   lazy = false,
--   priority = 1000,
--   opts = {},
--   config = function ()
--     vim.cmd[[colorscheme tokyonight]]
--   end
-- }
