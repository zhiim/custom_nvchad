local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")

-- if you just want default config for the servers then put them in a table
local servers = { "cmake" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- clangd setting, use mingw in windows
local clangd_mingw
if vim.loop.os_uname().sysname == "Windows_NT" then
    clangd_mingw = "--query-driver=" .. os.getenv("UserProfile") .. "\\scoop\\apps\\mingw\\current\\bin\\c++.exe"
    lspconfig.clangd.setup {
        on_attach = on_attach,
        capabilities = capabilities,
        cmd = {
            "clangd",
            clangd_mingw
        }
    }
else
    -- if in linux
    lspconfig.clangd.setup {
        on_attach = on_attach,
        capabilities = capabilities,
    }
end

-- 
-- lspconfig.pyright.setup { blabla}

-- pylsp settings
lspconfig.pylsp.setup {
   on_attach = on_attach,
   capabilities = capabilities,
   settings = {
        pylsp = {
            plugins = {
                pycodestyle = {
                    enabled = false
                }
            }
        }
    }
 }
