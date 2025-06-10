local is_linux = vim.loop.os_uname().sysname == "Linux"

local M = {}

if is_linux then
  M.jdk8_home = ""
  M.jdk11_home = ""
  M.jdk17_home = ""
  M.jdk21_home = ""
else
  M.jdk8_home = vim.fn.glob("$ProgramFiles\\Amazon Corretto\\jdk1.8*")
  M.jdk11_home = vim.fn.glob("$ProgramFiles\\Amazon Corretto\\jdk11*")
  M.jdk17_home = vim.fn.glob("$ProgramFiles\\Amazon Corretto\\jdk17*")
  M.jdk21_home = vim.fn.glob("$ProgramFiles\\Amazon Corretto\\jdk21*")
end

return M
