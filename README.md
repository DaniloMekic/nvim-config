Configuration files should be placed at:
- `$XDG_CONFIG_HOME/nvim/` (Linux) 
- `%LOCALAPPDATA%\nvim\` (Windows)


# External Dependencies
- **Python**: https://www.python.org
- **Java**
  - **Amazon Corretto 8**: https://docs.aws.amazon.com/corretto/latest/corretto-8-ug/index.html
  - **Amazon Corretto 11**: https://docs.aws.amazon.com/corretto/latest/corretto-11-ug/index.html
  - **Amazon Corretto 17**: https://docs.aws.amazon.com/corretto/latest/corretto-17-ug/index.html
  - **Amazon Corretto 21**: https://docs.aws.amazon.com/corretto/latest/corretto-21-ug/index.html
- **clangd**: https://github.com/clangd/clangd
- **Eclipse JDT Language Server**: https://github.com/eclipse-jdtls/eclipse.jdt.ls
- **Java Debug Server** (JDT Plugin): https://github.com/microsoft/java-debug
- **Lua Language Server**: https://github.com/LuaLS/lua-language-server
- **VS Code Language Servers** (Node.js): https://github.com/hrsh7th/vscode-langservers-extracted
- **ruff**: https://github.com/astral-sh/ruff


# Environment Variables and Paths
- Update `$PATH` with paths to directories containing binaries of clangd, JDT, and Lua LSP servers.
- Set `$JAVA_HOME` to Java 21 runtime environment (at minimum) since it's required by JDT to run.
- Paths used internally are set in `nvim\lua\config\paths.lua`. 
