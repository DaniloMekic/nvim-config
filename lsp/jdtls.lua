local paths = require("config.paths")

---@type vim.lsp.Config
return {
  settings = {
    java = {
      configuration = {
        runtimes = {
          {
            name = "JavaSE-1.8",
            path = paths.jdk8_home
          },
          {
            name = "JavaSE-11",
            path = paths.jdk11_home
          },
          {
            name = "JavaSE-17",
            path = paths.jdk17_home
          },
          {
            name = "JavaSE-21",
            path = paths.jdk21_home,
            default = true
          }
        }
      }
    }
  }
}
