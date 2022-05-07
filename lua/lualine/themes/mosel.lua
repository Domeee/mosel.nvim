local colors = require("mosel.colors")
local c = colors.colors

return {
	normal = {
		a = { fg = c.bg, bg = c.blue, gui = "bold" },
		b = { fg = c.white, bg = c.bg3 },
		c = { fg = c.fg, bg = c.bg },
	},
	insert = { a = { fg = c.bg, bg = c.green, gui = "bold" } },
	visual = { a = { fg = c.bg, bg = c.yellow, gui = "bold" } },
	replace = { a = { fg = c.bg, bg = c.green, gui = "bold" } },
	inactive = {
		a = { fg = c.fg, bg = c.bg3, gui = "bold" },
		b = { fg = c.fg, bg = c.bg3 },
		c = { fg = c.fg, bg = c.bg3 },
	},
}
