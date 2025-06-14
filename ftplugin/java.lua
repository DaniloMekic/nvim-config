-- Eclipse JDT Language Server (JDTLS)
-- Wiki: https://github.com/eclipse-jdtls/eclipse.jdt.ls/wiki
-- `org.eclipse.jdt.ls.core.internal.preferences.Preferences`: https://github.com/eclipse-jdtls/eclipse.jdt.ls/blob/main/org.eclipse.jdt.ls.core/src/org/eclipse/jdt/ls/core/internal/preferences/Preferences.java

-- JDTLS Paths
local jdtls_home = vim.fn.expand("$MASON/packages/jdtls")
print(jdtls_home)
local jdtls_jar = vim.fn.globpath(jdtls_home .. "/plugins", "org.eclipse.equinox.launcher_*.jar")
print(jdtls_jar)
local jdtls_config_linux = jdtls_home .. "/config_linux"
print(jdtls_config_linux)

-- Project Paths
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
local project_root = vim.fs.root(0, { ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" })
print(project_root)
if project_root == "." then -- Dot instead of a canonical path would throw java.net.URISyntaxException
  project_root = vim.fn.fnamemodify(project_root, ":p")
end
print(project_root)

-- JDTLS Workspace Paths
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
  root_dir = project_root,
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
    jvm_args = {},
    bundles = {}
  },
}

--vim.lsp.config("jdtls", config)
require("jdtls").start_or_attach(config)
