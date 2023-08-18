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
    -- this mapping only takes place after being manually loaded in
    -- plugin config
    plugin = true,

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
    -- this mapping only takes place after being manually loaded in
    -- plugin config
    plugin = true,

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

M.neogen = {
    plugin = true,
    n = {
        ["<leader>ag"] = {
            function ()
                require("neogen").generate()
            end,
            "Genearte annotation templates"
        }
    }
}

-- -- key mappings for venv-selector
-- M.venv = {
--     plugin = true,
--     n = {
--         -- select python venv
--         ["<leader>pvs"] = {
--             "<cmd>:VenvSelect<cr>",
--             "Select a venv for python"
--         },
--         -- select cached python venv
--         ["<leader>pvc"] = {
--             "<cmd>:VenvSelectCached<cr>",
--             "Select last used venv"
--         },
--         -- deactivate current venv
--         ["<leader>pvd"] = {
--             function ()
--                 require("venv-selector").deactivate_venv()
--             end,
--             "Decativate current venv"
--         },
--         -- get path of current venv
--         ["<leader>pvp"] = {
--             function ()
--                 require("venv-selector").get_active_venv()
--             end,
--             "Decativate current venv"
--         }
--     }
-- }

return M
