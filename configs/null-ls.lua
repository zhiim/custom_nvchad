local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {
  -- Lua
  b.formatting.stylua,

  -- cpp and java
  b.formatting.clang_format,

  -- python
  b.formatting.isort,
  b.diagnostics.ruff,
  b.diagnostics.mypy,

}

null_ls.setup {
  debug = true,
  sources = sources,
}
