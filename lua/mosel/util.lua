local M = {}

function M.highlight(group, table)
	-- group: Statement
	-- table: { bg = "Black", fg = "LightBlue", gui = "bold, italic"}

	local fg = table.fg and table.fg or "NONE"
	local bg = table.bg and table.bg or "NONE"
	local gui = table.gui and table.gui or "NONE"
	local sp = table.sp and table.sp or "NONE"

	local cmd = "highlight " .. group .. " guifg=" .. fg .. " guibg=" .. bg .. " gui=" .. gui .. " guisp=" .. sp
	vim.cmd(cmd)
end

return M
