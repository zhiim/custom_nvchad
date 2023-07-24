local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
    "cpp",
    "java",
    "python",
    "rust",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- c/cpp stuff
    "clangd",
    "clang-format",

    -- python stuff
    "python-lsp-server",
    "isort",  -- formatter
    "pylint",  -- linter

    -- rust stuff
    "rust-analyzer",
    "rustfmt",

    -- java stuff
    "jdtls",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
