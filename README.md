Configuration files should be placed at:
- `$XDG_CONFIG_HOME/nvim/` (Linux) 
- `%LOCALAPPDATA%\nvim\` (Windows)


# External Dependencies
- **Lua**
  - **Lua Interpreter**: https://www.lua.org, 
  - **Lua Language Server**: https://github.com/LuaLS/lua-language-server
- **Python**: 
  - **Python 3**: https://www.python.org
  - **Basedpyright**: https://github.com/DetachHead/basedpyright, https://docs.basedpyright.com/latest
  - **ruff**: https://github.com/astral-sh/ruff, https://docs.astral.sh/ruff
- **Java**
  - **Amazon Corretto 8**: https://docs.aws.amazon.com/corretto/latest/corretto-8-ug/index.html
  - **Amazon Corretto 11**: https://docs.aws.amazon.com/corretto/latest/corretto-11-ug/index.html
  - **Amazon Corretto 17**: https://docs.aws.amazon.com/corretto/latest/corretto-17-ug/index.html
  - **Amazon Corretto 21**: https://docs.aws.amazon.com/corretto/latest/corretto-21-ug/index.html
  - **Eclipse JDT Language Server**: https://github.com/eclipse-jdtls/eclipse.jdt.ls
    - **Java Debug Server** (JDT Plugin): https://github.com/microsoft/java-debug
  - **Maven**: https://maven.apache.org
- **C/C++**
  - **MinGW-w64**: https://www.mingw-w64.org
  - **clangd**: https://github.com/clangd/clangd, https://clangd.llvm.org
- **VS Code Language Servers** (Node.js): https://github.com/hrsh7th/vscode-langservers-extracted
- **Git**: https://git-scm.com


# Environment Variables and Paths
- Update `$PATH` with paths to directories containing binaries of clangd, JDT, and Lua LSP servers.
- Set `$JAVA_HOME` to Java 21 runtime environment (at minimum) since it's required by JDT to run.
- Paths used internally are set in `nvim\lua\config\paths.lua`. 
