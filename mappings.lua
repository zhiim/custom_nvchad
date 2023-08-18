---@type MappingsTable
local M = {}

M.general = {
  -- mappings in normal mode
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

-- custom gitsigns mappings
M.gitsigns = {
  n = {
    ["<leader>tb"] = {
      function()
        require("gitsigns").toggle_current_line_blame()
      end,
      "Toggle blame of each line",
    },
  }
}
-- mappings for nvim-dap
M.dap = {
    -- key mappings work in normal mode
    n = {
      -- set breakpoints
      ["<leader>dp"] = {
          function()
            require('dap').toggle_breakpoint()
          end,
          "Set breakpoints"
      },
      -- continue
      ["<leader>dc"] = {
          function()
            require('dap').continue()
          end,
          "Launch debug sessions/ resuming execution"
      },
      -- setp over
      ["<leader>dso"] = {
          function()
            require('dap').step_over()
          end,
          "Step over"
      },
      -- setp into
      ["<leader>dsi"] = {
          function()
            require('dap').step_into()
          end,
          "Step into"
      },
    },
}

-- mappings for nvim-dap-python
M.dap_python = {
    -- key mappings work in normal mode
    n = {
      -- running python test method debugging
      ["<leader>dpt"] = {
          function()
            require('dap-python').test_method()
          end,
          "Debug in Python testing method"
        }
    },
}

-- key mappings for neogen plugin
M.neogen = {
    n = {
        ["<leader>ga"] = {
            function ()
                require("neogen").generate()
            end,
            "Genearte annotation template"
        }
    }
}

-- key mappings for grammarous plugin
M.grammarous = {
    n = {
        ["<leader>gch"] = {
            "<cmd>:GrammarousCheck<cr>",
            "Chech Grammar",
        },
        ["<leader>gcr"] = {
            "<cmd>:GrammarousReset<cr>",
            "Rest grammar check",
        }
    }
}

return M
