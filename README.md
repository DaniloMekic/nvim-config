Configuration files should be placed at:
- `$XDG_CONFIG_HOME/nvim/` (Linux)
- `%LOCALAPPDATA%\nvim\` (Windows)


# External Dependencies
- **Lua**: https://www.lua.org
- **Python**: https://www.python.org
- **Java**
  - **Amazon Corretto 8**: https://docs.aws.amazon.com/corretto/latest/corretto-8-ug/index.html
  - **Amazon Corretto 11**: https://docs.aws.amazon.com/corretto/latest/corretto-11-ug/index.html
  - **Amazon Corretto 17**: https://docs.aws.amazon.com/corretto/latest/corretto-17-ug/index.html
  - **Amazon Corretto 21**: https://docs.aws.amazon.com/corretto/latest/corretto-21-ug/index.html
  - **Maven**: https://maven.apache.org
- **C/C++**
  - **MinGW-w64**: https://www.mingw-w64.org
- **Mason**-specific: https://github.com/mason-org/mason.nvim#requirements


# Environment Variables and Paths
- Set `$JAVA_HOME` to Java 21 runtime environment (at minimum) since it's required by JDTLS to run.
- Paths used internally are set in `nvim/lua/config/paths.lua`.
