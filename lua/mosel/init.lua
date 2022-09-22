local groups = require("mosel.groups")
local util = require("mosel.util")

local M = {}

function M.apply()
  for group, colors in pairs(groups.groups) do
    util.highlight(group, colors)
  end
end

return M
