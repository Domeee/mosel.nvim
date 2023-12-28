local create_autocmd = vim.api.nvim_create_autocmd
local opt = vim.opt

local M = {}

function M.highlight(group, table)
  vim.api.nvim_set_hl(0, group, table)
end

-- Extend non-current window highlighting
function M.apply_nc_highlighting()
  local set_unhighlighted = function()
    vim.api.nvim_win_set_option(0, "winhighlight",
      "SignColumn:SignColumnNC,EndOfBuffer:EndOfBufferNC,ColorColumn:ColorColumnNC")
    opt.cursorline = false
  end

  local set_highlighted = function()
    vim.api.nvim_win_set_option(0, "winhighlight",
      "SignColumn:SignColumn,EndOfBuffer:EndOfBuffer,ColorColumn:ColorColumn")
    opt.cursorline = true
  end

  vim.api.nvim_create_augroup("mosel", {
    clear = false
  })

  create_autocmd("WinLeave", {
    group = "mosel",
    pattern = { "*" },
    callback = set_unhighlighted
  })

  create_autocmd("WinEnter", {
    group = "mosel",
    pattern = { "*" },
    callback = set_highlighted
  })
end

return M
