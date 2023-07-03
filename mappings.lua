---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

-- custom gitsigns mappings
M.gitsigns = {
  plugin = true,

  n = {
    ["<leader>tb"] = {
      function()
        require("gitsigns").toggle_current_line_blame()
      end,
      "Toggle blame of each line",
    },
  }
}
-- more keybinds!

return M
