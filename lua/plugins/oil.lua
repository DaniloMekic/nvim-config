return {
  "stevearc/oil.nvim",

  opts = {
    default_file_explorer = true,
    columns = {
      "icon",
      "permissions",
      "size",
      "mtime"
    },
    view_options = {
      show_hidden = true,
      sort = {
        { "type", "asc" },
        { "name", "asc" }
      }
    }
  },

  dependencies = {
    { "echasnovski/mini.icons",
      opts = {}
    }
  },

  lazy = false
}
