local is_linux = vim.loop.os_uname().sysname == "Linux"

local M = {}

if is_linux then
  M.jdk8_home = ""
  M.jdk11_home = ""
  M.jdk17_home = ""
  M.jdk21_home = ""
  M.jdtls_java_debug_server_home = ""
  M.jdtls_java_debug_server_plugin = ""
else
  M.jdk8_home = vim.fn.glob("$ProgramFiles\\Amazon Corretto\\jdk1.8*")
  M.jdk11_home = vim.fn.glob("$ProgramFiles\\Amazon Corretto\\jdk11*")
  M.jdk17_home = vim.fn.glob("$ProgramFiles\\Amazon Corretto\\jdk17*")
  M.jdk21_home = vim.fn.glob("$ProgramFiles\\Amazon Corretto\\jdk21*")
  local jdtls_java_debug_server_home = vim.fn.glob("~$LocalAppData\\Programs\\java-debug-*")
  M.jdtls_java_debug_server_plugin = jdtls_java_debug_server_home .. "\\com.microsoft.java.debug.plugin\\target\\com.microsoft.java.debug.plugin-0.53.1.jar"
end

return M
