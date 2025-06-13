-- JDTLS Paths
local jdtls_home = vim.fn.expand("$MASON/packages/jdtls")
local jdtls_jar = vim.fn.globpath(jdtls_home .. "/plugins", "org.eclipse.equinox.launcher_*.jar")
local jdtls_config_linux = jdtls_home .. "/config_linux"

-- Project and Workspace Paths
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
local workspace_root = vim.fn.expand("~/.local/share/jdtls/")
local workspace_dir = workspace_root .. project_name

-- Create the root workspace directory if it doesn't exist
if vim.fn.isdirectory(workspace_root) == 0 then
  vim.fn.mkdir(workspace_root, "p")
end

local config = {
  -- The command that starts the language server
  -- See: https://github.com/eclipse/eclipse.jdt.ls#running-from-the-command-line
  cmd = {
    "java",
    "-Declipse.application=org.eclipse.jdt.ls.core.id1",
    "-Dosgi.bundles.defaultStartLevel=4",
    "-Declipse.product=org.eclipse.jdt.ls.core.product",
    "-Dlog.protocol=true",
    "-Dlog.level=ALL",
    "-Xmx1g",
    "--add-modules=ALL-SYSTEM",
    "--add-opens", "java.base/java.util=ALL-UNNAMED",
    "--add-opens", "java.base/java.lang=ALL-UNNAMED",
    "-jar", jdtls_jar,
    "-configuration", jdtls_config_linux,
    "-data", workspace_dir
  },
  root_dir = vim.fs.root(0, { ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" }),
  filetypes = { "java" },

  -- Here you can configure eclipse.jdt.ls specific settings
  -- See https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
  -- for a list of options
  settings = {
    java = {
    }
  },

  -- Language server `initializationOptions`
  -- You need to extend the `bundles` with paths to jar files
  -- if you want to use additional eclipse.jdt.ls plugins.
  --
  -- See https://github.com/mfussenegger/nvim-jdtls#java-debug-installation
  --
  -- If you don"t plan on using the debugger or other eclipse.jdt.ls plugins you can remove this
  init_options = {
    bundles = {}
  },
}

vim.lsp.config("jdtls", config)
