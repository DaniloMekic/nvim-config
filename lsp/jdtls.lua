local paths = require("config.paths")

---@type vim.lsp.Config
return {
  -- eclipse.jdt.ls specific settings
  -- See https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
  -- for a list of options
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
  },
  -- Language server `initializationOptions`
  -- See https://github.com/mfussenegger/nvim-jdtls#java-debug-installation
  init_options = {
    bundles = {
      paths.jdtls_java_debug_server_plugin
    }
  }
}
