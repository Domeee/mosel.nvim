local colors = require("mosel.colors")
local c = colors.colors

local M = {}

M.groups = {
	Conceal = { fg = c.fg }, -- placeholder characters substituted for concealed
	Cursor = { fg = c.bg, bg = c.fg }, -- character under the cursor
	lCursor = { fg = c.bg, bg = c.fg }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
	CursorIM = { fg = c.bg, bg = c.fg }, -- like Cursor, but used when in IME mode |CursorIM|
	CursorLine = { bg = c.bg3 }, -- screen-line at the cursor, when 'cursorline' is set.
	CursorLineNr = { fg = c.blue, gui = "bold" }, -- CursorLineNr Like LineNr when 'cursorline' is set and 'cursorlineopt'" contains "number" or is "both", for the cursor line.
	Directory = { fg = c.blue2 }, -- directory names (and other special names in listings)
	DiffAdd = { fg = c.green }, -- diff mode: Added line |diff.txt|
	DiffChange = { fg = c.yellow }, -- diff mode: Changed line |diff.txt|
	DiffDelete = { fg = c.red }, -- diff mode: Deleted line |diff.txt|
	DiffText = { fg = c.yellow }, -- diff mode: Changed text within a changed line |diff.txt|
	EndOfBuffer = { fg = c.bg3 }, -- filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
	ErrorMsg = { fg = c.white, bg = c.red }, -- error messages on the command line
	VertSplit = { fg = c.bg, bg = c.bg }, -- the column separating vertically split windows
	SignColumn = { fg = c.fg, bg = c.bg }, -- column where |signs| are displayed
	IncSearch = { fg = c.white, gui = "bold,underline" }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
	Substitute = { fg = c.white, gui = "bold,underline" }, --	|:substitute| replacement text highlighting
	LineNr = { fg = c.fg2 }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
	MatchParen = { fg = c.green, gui = "bold" }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
	ModeMsg = { fg = c.fg2, gui = "bold" }, -- 'showmode' message (e.g., "-- INSERT --")
	MsgArea = { fg = c.fg2, gui = "bold" }, -- Area for messages and cmdline
	MoreMsg = { fg = c.fg }, --|more-prompt|
	NonText = { fg = c.bg3 }, --'@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
	Normal = { fg = c.fg, bg = c.bg }, -- normal text
	NormalFloat = { fg = c.fg, bg = c.bg2 }, --	Normal text in floating windows.
	NormalNC = { fg = c.fg, bg = c.bg2 }, -- normal text in non-current windows
	Pmenu = { fg = c.fg, bg = c.bg3 }, --Popup menu: normal item.
	PmenuSel = { fg = c.bg, bg = c.pink, gui = "bold" }, -- Popup menu: selected item.
	PmenuSbar = { bg = c.fg2 }, -- Popup menu: scrollbar.
	PmenuThumb = { bg = c.fg }, -- Popup menu: Thumb of the scrollbar.
	Question = { fg = c.fg }, -- |hit-enter| prompt and yes/no questions
	Search = { fg = c.white, gui = "bold,underline" }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
	SpecialKey = { fg = c.bg2 }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
	StatusLine = { bg = c.bg }, -- status line of current window
	StatusLineNC = { bg = c.bg3 }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
	Title = { fg = c.blue, gui = "bold" }, -- titles for output from ":set all", ":autocmd" etc.
	Visual = { bg = c.bg3 }, -- Visual mode selection
	VisualNOS = { bg = c.bg3 }, -- Visual mode selection when vim is "Not Owning the Selection".
	WarningMsg = { bg = c.red, fg = c.white }, -- warning messages
	Whitespace = { fg = c.bg2 }, -- "nbsp", "space", "tab", "multispace", "lead" and "trail" in 'listchars'
	WildMenu = { fg = c.fg, bg = c.bg3 }, -- current match in 'wildmenu' completion

	Comment = { fg = c.fg2 },
	Constant = { fg = c.pink }, -- (preferred) any constant
	String = { fg = c.beige }, --   a string constant: "this is a string"
	Character = { fg = c.pink }, --  a character constant: 'c', '\n'
	Number = { fg = c.pink }, --   a number constant: 234, 0xff
	-- Boolean       = { }, --  a boolean constant: TRUE, false
	Float = { c.pink }, --    a floating point constant: 2.3e10

	Identifier = { fg = c.blue }, -- (preferred) any variable name
	Function = { fg = c.blue2 }, -- function name (also: methods for classes)
	Statement = { fg = c.blue2 }, -- (preferred) any statement
	-- Conditional   = { }, --  if, then, else, endif, switch, etc.
	-- Repeat        = { }, --   for, do, while, etc.
	-- Label         = { }, --    case, default, etc.
	Operator = { fg = c.white }, -- "sizeof", "+", "*", etc.
	Keyword = { fg = c.fg }, --  any other keyword
	-- Exception     = { }, --  try, catch, throw

	PreProc = { fg = c.fg }, -- (preferred) generic Preprocessor
	-- Include       = { }, --  preprocessor #include
	-- Define        = { }, --   preprocessor #define
	-- Macro         = { }, --    same as Define
	-- PreCondit     = { }, --  preprocessor #if, #else, #endif, etc.

	Type = { fg = c.white }, -- (preferred) int, long, char, etc.
	-- StorageClass  = { }, -- static, register, volatile, etc.
	-- Structure     = { }, --  struct, union, enum, etc.
	-- Typedef       = { }, --  A typedef

	Special = { fg = c.fg }, -- (preferred) any special symbol
	-- SpecialChar   = { }, --  special character in a constant
	-- Tag           = { }, --    you can use CTRL-] on this
	-- Delimiter     = { }, --  character that needs attention
	-- SpecialComment= { }, -- special things inside a comment
	-- Debug         = { }, --    debugging statements

	Underlined = { gui = "underline" }, -- (preferred) text that stands out, HTML links
	Bold = { gui = "bold" },
	Italic = { gui = "italic" },

	Ignore = {}, -- (preferred) left blank, hidden  |hl-Ignore|

	Error = { bg = c.red, fg = c.white, gui = "bold" }, -- (preferred) any erroneous construct
	Todo = { bg = c.pink, fg = c.bg, gui = "bold" }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

	TSVariable = { fg = c.blue },
	TSProperty = { fg = c.blue2 },
	TSField = { fg = c.blue2 },
	TSPunctDelimiter = { fg = c.blue2 },
	TSConstructor = { fg = c.white },
	TSLabel = { fg = c.blue },
	TSFloat = { c.pink },

	tsxTSConstructor = { fg = c.white },

	elixirTSSymbol = { fg = c.blue2 },

	markdownHeadingDelimiter = { fg = c.blue2, gui = "bold" },
	markdownLinkText = { fg = c.blue2, gui = "underline" },
	markdownCode = { fg = c.beige },
	markdownCodeDelimiter = { fg = c.blue2, gui = "italic" },

	htmlBold = { fg = c.white, gui = "bold" },

	DiagnosticError = { fg = c.red }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
	DiagnosticWarn = { fg = c.orange }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
	DiagnosticInfo = { fg = c.green }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
	DiagnosticHint = { fg = c.white }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default

	DiagnosticUnderlineError = { gui = "underline", sp = c.red }, -- Used to underline "Error" diagnostics
	DiagnosticUnderlineWarn = { gui = "underline", sp = c.orange2 }, -- Used to underline "Warning" diagnostics
	DiagnosticUnderlineInfo = { gui = "underline", sp = c.green }, -- Used to underline "Information" diagnostics
	DiagnosticUnderlineHint = { gui = "underline", sp = c.white }, -- Used to underline "Hint" diagnostics

	-- Statusline
	diffAdded = { fg = c.green },
	diffRemoved = { fg = c.red },
	diffChanged = { fg = c.yellow },
}

return M
