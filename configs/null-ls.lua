local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

-- set config file for ruff
local ruff_config
if vim.loop.os_uname().sysname == "Linux" then
    ruff_config = {"--config=" .. os.getenv("HOME") .. "/.config/nvim/lua/custom/ruff/pyproject.toml"}
else
    ruff_config = {"--config=".. os.getenv("UserProfile") .. "\\AppData\\Local\\nvim\\lua\\custom\\ruff\\pyproject.toml"}
end

local sources = {
  -- Lua
  b.formatting.stylua,

  -- cpp and java
  b.formatting.clang_format,

  -- python
  b.formatting.isort,
  -- setup ruff work with a configuration file
  b.diagnostics.ruff.with({
        extra_args = ruff_config
    }),

}

null_ls.setup {
  debug = true,
  sources = sources,
}
