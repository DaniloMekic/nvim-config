# External Dependencies
## LSP Servers
- **Eclipse JDT Language Server**: https://github.com/eclipse-jdtls/eclipse.jdt.ls
- **Lua Language Server**: https://github.com/LuaLS/lua-language-server

## DAP Debug Adapters
- **Java Debug Server (JDT Plugin)**: https://github.com/microsoft/java-debug

## Node.js Packages
- `vscode-langservers-extracted`: https://github.com/hrsh7th/vscode-langservers-extracted

## JDKs
- **Amazon Corretto 8**: https://docs.aws.amazon.com/corretto/latest/corretto-8-ug/index.html
- **Amazon Corretto 11**: https://docs.aws.amazon.com/corretto/latest/corretto-11-ug/index.html
- **Amazon Corretto 17**: https://docs.aws.amazon.com/corretto/latest/corretto-17-ug/what-is-corretto-17.html
- **Amazon Corretto 21**: https://docs.aws.amazon.com/corretto/latest/corretto-21-ug/index.html


# Environment Variables
- Update `PATH` with paths to `\bin` directories of JDT and Lua LSP servers.
- Set `JAVA_HOME` to Java 21 runtime environment (at minimum) since it's required by JDT to run.
