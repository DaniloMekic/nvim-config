-- Text lines
vim.opt.number = true                            -- Print line number in front of each line.
vim.opt.relativenumber = true                    -- Show the line number relative to the line with the cursor in front of each line.
vim.opt.numberwidth = 4                          -- Width of the line number.
vim.opt.signcolumn = auto                        -- Render signcolumn only when there is sign to show.
vim.opt.cursorline = true                        -- Highlight the text line of the cursor.

-- TAB spaces to WHITESPACE
vim.opt.expandtab = true                         -- In Insert mode when Tab key is pressed inserts <Space> characters. Number of <Space> characters is determined by 'tabstop' option.
vim.opt.tabstop = 2                              -- Number of spaces that a <Tab> in the file counts for, i.e. how many columns does it occupy. Also influences how <Tab> spaces are displayed in 'list' mode.
vim.opt.softtabstop = 2                          -- Number of spaces that a <Tab> counts for while performing editing operations, like inserting a <Tab> or using <BS>.
vim.opt.shiftwidth = 2                           -- Number of spaces to use for each step of (auto)indent. Used for 'cindent', >>, <<, etc.

-- Display control characters
vim.opt.list = true                              -- Enable 'list' mode.
vim.opt.listchars = {                            -- Strings to use in 'list' mode.
  tab = ">-",
  space = "·",
  trail = "·",
  eol = "$"
}

vim.opt.splitright = true                        -- Splitting a window vertically will put the new window right of the current one.
vim.opt.splitbelow = true                        -- Splitting a window horizontally will put the new window below the current one.
vim.opt.wrap = false                             -- Text wrapping.
vim.opt.scrolloff = 999                          -- Minimal number of screen lines to keep above and below the cursor.
vim.opt.inccommand = "split"                     -- When nonempty, shows the effects of :substitute, :smagic, :snomagic and user commands with the :command-preview flag as you type.
vim.opt.showcmd = true                           -- Show (partial) command in the last line of the screen.

-- Colors
vim.opt.termguicolors = true                     -- Enables 24-bit RGB color in the TUI.
