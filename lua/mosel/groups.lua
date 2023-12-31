local colors = require("mosel.colors")
local c = colors.colors

local M = {}

M.groups = {
  ColorColumn                       = { bg = c.bg_tint_2 },                            -- used for the columns set with 'colorcolumn'
  ColorColumnNC                     = { bg = c.bg_tint_1 },                            -- used for the columns set with 'colorcolumn'
  Conceal                           = { fg = c.fg },                                   -- placeholder characters substituted for concealed
  Cursor                            = { fg = c.bg, bg = c.fg },                        -- character under the cursor
  lCursor                           = { fg = c.bg, bg = c.fg },                        -- the character under the cursor when |language-mapping| is used (see 'guicursor')
  CursorIM                          = { fg = c.bg, bg = c.fg },                        -- like Cursor, but used when in IME mode |CursorIM|
  CursorLine                        = { bg = c.bg_tint_2 },                            -- screen-line at the cursor, when 'cursorline' is set.
  CursorLineNr                      = { fg = c.blue, bold = true },                    -- CursorLineNr Like LineNr when 'cursorline' is set and 'cursorlineopt'" contains "number" or is "both", for the cursor line.
  Directory                         = { fg = c.blue_tint_1 },                          -- directory names (and other special names in listings)
  DiffAdd                           = { fg = c.green },                                -- diff mode: Added line |diff.txt|
  DiffChange                        = { fg = c.yellow },                               -- diff mode: Changed line |diff.txt|
  DiffDelete                        = { fg = c.red },                                  -- diff mode: Deleted line |diff.txt|
  DiffText                          = { fg = c.yellow },                               -- diff mode: Changed text within a changed line |diff.txt|
  EndOfBuffer                       = { fg = c.bg, bg = c.bg },                        -- filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
  EndOfBufferNC                     = { fg = c.bg_tint_1, bg = c.bg_tint_1 },          -- filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
  ErrorMsg                          = { fg = c.white, bg = c.red },                    -- error messages on the command line
  VertSplit                         = { fg = c.bg, bg = c.bg },                        -- the column separating vertically split windows
  SignColumn                        = { fg = c.fg, bg = c.bg },                        -- column where |signs| are displayed
  SignColumnNC                      = { fg = c.fg, bg = c.bg_tint_1 },                 -- column where |signs| are displayed
  IncSearch                         = { fg = c.white, bold = true, underline = true }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
  Substitute                        = { fg = c.white, bold = true, underline = true }, --	|:substitute| replacement text highlighting
  LineNr                            = { fg = c.fg_shade_1 },                           -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
  MatchParen                        = { fg = c.white, bold = true },                   -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
  ModeMsg                           = { fg = c.fg_shade_1, bold = true },              -- 'showmode' message (e.g., "-- INSERT --")
  MsgArea                           = { fg = c.fg_shade_1, bold = true },              -- Area for messages and cmdline
  MoreMsg                           = { fg = c.fg },                                   --|more-prompt|
  NonText                           = { fg = c.bg_tint_2 },                            --'@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
  Normal                            = { fg = c.fg, bg = c.bg },                        -- normal text
  NormalNC                          = { fg = c.fg, bg = c.bg_tint_1 },                 -- normal text in non-current windows
  NormalFloat                       = { fg = c.white, bg = c.bg_tint_4 },              --	Normal text in floating windows.
  FloatBorder                       = { fg = c.blue_tint_1, bg = c.bg },               --	Borders in floating windows.
  FloatTitle                        = { fg = c.blue, bg = c.bg },                      --	Title in floating windows.
  WinSeparator                      = { fg = c.bg },
  Pmenu                             = { fg = c.white, bg = c.bg_tint_2 },              --Popup menu: normal item.
  PmenuSel                          = { fg = c.bg, bg = c.yellow, bold = true },       -- Popup menu: selected item.
  PmenuSbar                         = { bg = c.fg_shade_1 },                           -- Popup menu: scrollbar.
  PmenuThumb                        = { bg = c.fg },                                   -- Popup menu: Thumb of the scrollbar.
  Question                          = { fg = c.fg },                                   -- |hit-enter| prompt and yes/no questions
  Search                            = { fg = c.white, bold = true, underline = true }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
  SpecialKey                        = { fg = c.bg_tint_1 },                            -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
  StatusLine                        = { bg = c.bg },                                   -- status line of current window
  StatusLineNC                      = { bg = c.bg_tint_1, fg = c.fg },                 -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
  Title                             = { fg = c.blue, bold = true },                    -- titles for output from ":set all", ":autocmd" etc.
  Visual                            = { bg = c.bg_tint_2 },                            -- Visual mode selection
  VisualNOS                         = { bg = c.bg_tint_2 },                            -- Visual mode selection when vim is "Not Owning the Selection".
  WarningMsg                        = { bg = c.red, fg = c.white },                    -- warning messages
  Whitespace                        = { fg = c.bg_tint_1 },                            -- "nbsp", "space", "tab", "multispace", "lead" and "trail" in 'listchars'
  WildMenu                          = { fg = c.fg, bg = c.bg_tint_2 },                 -- current match in 'wildmenu' completion
  Comment                           = { fg = c.fg_shade_1 },
  Constant                          = { fg = c.blue },                                 -- (preferred) any constant
  String                            = { fg = c.beige },                                --   a string constant: "this is a string"
  Character                         = { fg = c.pink },                                 --  a character constant: 'c', '\n'
  Number                            = { fg = c.pink },                                 --   a number constant: 234, 0xff
  Boolean                           = { fg = c.pink },                                 --  a boolean constant: TRUE, false
  Float                             = { fg = c.pink },                                 --    a floating point constant: 2.3e10
  Identifier                        = { fg = c.blue },                                 -- (preferred) any variable name
  Function                          = { fg = c.blue_tint_2, italic = true },           -- function name (also: methods for classes)
  Statement                         = { fg = c.blue_tint_2 },                          -- (preferred) any statement
  -- Conditional   = { }, --  if, then, else, endif, switch, etc.
  -- Repeat        = { }, --   for, do, while, etc.
  -- Label         = { }, --    case, default, etc.
  Operator                          = { fg = c.white }, -- "sizeof", "+", "*", etc.
  Keyword                           = { fg = c.fg },    --  any other keyword
  -- Exception     = { }, --  try, catch, throw

  PreProc                           = { fg = c.fg }, -- (preferred) generic Preprocessor
  -- Include       = { }, --  preprocessor #include
  -- Define        = { }, --   preprocessor #define
  -- Macro         = { }, --    same as Define
  -- PreCondit     = { }, --  preprocessor #if, #else, #endif, etc.

  Type                              = { fg = c.white }, -- (preferred) int, long, char, etc.
  -- StorageClass  = { }, -- static, register, volatile, etc.
  -- Structure     = { }, --  struct, union, enum, etc.
  -- Typedef       = { }, --  A typedef

  Special                           = { fg = c.fg }, -- (preferred) any special symbol
  -- SpecialChar   = { }, --  special character in a constant
  -- Tag           = { }, --    you can use CTRL-] on this
  -- Delimiter     = { }, --  character that needs attention
  -- SpecialComment= { }, -- special things inside a comment
  -- Debug         = { }, --    debugging statements

  Underlined                        = { underline = true }, -- (preferred) text that stands out, HTML links
  Bold                              = { bold = true },
  Italic                            = { italic = true },
  Ignore                            = {},                                        -- (preferred) left blank, hidden  |hl-Ignore|
  Error                             = { bg = c.red, fg = c.white, bold = true }, -- (preferred) any erroneous construct
  Todo                              = { bg = c.yellow, fg = c.bg, bold = true }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
  -- https://neovim.io/doc/user/treesitter.html#treesitter-highlight-groups
  ["@constant"]                     = { link = "Constant" },
  ["@type"]                         = { link = "Type" },
  ["@constant.builtin"]             = { link = "Constant" },
  ["@function.call"]                = { link = "Function" },
  ["@function.builtin"]             = { link = "Function" },
  ["@variable"]                     = { link = "Identifier" },
  ["@variable.builtin"]             = { link = "Identifier" },
  ["@property"]                     = { fg = c.blue_tint_1 },
  ["@field"]                        = { link = "@property" },
  ["@punctuation.delimiter"]        = { fg = c.fg },
  ["@constructor"]                  = { link = "Type" },
  ["@label"]                        = { fg = c.blue },
  ["@float"]                        = { link = "Float" },
  ["@text.todo"]                    = { link = "Todo" },
  -- markup languages (html, jsx, etc.)
  ["@tag.attribute"]                = { link = "@property" },
  htmlBold                          = { fg = c.white, bold = true },
  -- lsp semantic highlighting
  ["@lsp.type.property"]            = { link = "@property" },
  -- typescriptreact
  ["@constructor.tsx"]              = { link = "Type" },
  -- elixir
  ["@symbol.elixir"]                = { fg = c.blue_tint_1 },
  ["@float.elixir"]                 = { fg = c.pink },
  ["@constant.elixir"]              = { link = "Boolean" },
  ["@constant.builtin.elixir"]      = { link = "Boolean" },
  -- markdown
  ["@text.literal.markdown_inline"] = { fg = c.beige },
  ["@text.strong.markdown_inline"]  = { fg = c.white, bold = true },
  -- Used as the base highlight group. Other Diagnostic highlights link to this by default
  DiagnosticError                   = { fg = c.red },
  DiagnosticWarn                    = { fg = c.yellow },
  DiagnosticInfo                    = { fg = c.green },
  DiagnosticHint                    = { fg = c.white },
  DiagnosticUnderlineError          = { underline = true, sp = c.red },    -- Used to underline "Error" diagnostics
  DiagnosticUnderlineWarn           = { underline = true, sp = c.yellow }, -- Used to underline "Warning" diagnostics
  DiagnosticUnderlineInfo           = { underline = true, sp = c.green },  -- Used to underline "Information" diagnostics
  DiagnosticUnderlineHint           = { underline = true, sp = c.white },  -- Used to underline "Hint" diagnostics
  -- Statusline
  diffAdded                         = { fg = c.green },
  diffRemoved                       = { fg = c.red },
  diffChanged                       = { fg = c.yellow },
  -- nvim-cmp
  CmpItemMenu                       = { fg = c.fg },
  CmpItemAbbrMatch                  = { fg = c.white, underline = true },
  CmpItemAbbrMatchFuzzy             = { fg = c.white, underline = true },
  CmpItemKindKeyword                = { fg = c.fg },
  CmpItemKindFile                   = { fg = c.white },
  CmpItemKindFolder                 = { fg = c.fg },
  CmpItemKindOperator               = { fg = c.white },
  CmpItemKindUnit                   = { fg = c.fg },
  CmpItemAbbrDeprecated             = { fg = c.fg_shade_1, strikethrough = true },
  CmpItemKindVariable               = { fg = c.blue },
  CmpItemKindField                  = { fg = c.blue_tint_1 },
  CmpItemKindTypeParameter          = { fg = c.blue },
  CmpItemKindProperty               = { fg = c.blue_tint_1 },
  CmpItemKindText                   = { fg = c.beige },
  CmpItemKindInterface              = { fg = c.white, italic = true },
  CmpItemKindFunction               = { fg = c.blue_tint_2 },
  CmpItemKindConstructor            = { fg = c.blue_tint_2 },
  CmpItemKindMethod                 = { fg = c.blue_tint_2 },
  CmpItemKindConstant               = { fg = c.pink },
  CmpItemKindClass                  = { fg = c.white },
  CmpItemKindEvent                  = { fg = c.white },
  CmpItemKindModule                 = { fg = c.white },
  CmpItemKindStruct                 = { fg = c.white },
  CmpItemKindEnum                   = { fg = c.pink },
  CmpItemKindEnumMember             = { fg = c.pink },
  CmpItemKindSnippet                = { fg = c.green },
  CmpItemKindValue                  = { fg = c.white },
  CmpItemKindColor                  = { fg = c.pink },
  CmpItemKindReference              = { fg = c.white },
  -- Copilot
  CopilotSuggestion                 = { fg = c.fg_shade_1 },
  -- nvim-dap
  DapBreakpointText                 = { fg = c.blue },
  DapBreakpointLine                 = {},
  DapBreakpointNumber               = {},
  DapBreakpointConditionText        = { fg = c.yellow },
  DapBreakpointConditionLine        = {},
  DapBreakpointConditionNumber      = {},
  DapBreakpointRejectedText         = { fg = c.red },
  DapBreakpointRejectedLine         = {},
  DapBreakpointRejectedNumber       = {},
  DapStoppedText                    = { fg = c.green },
  DapStoppedLine                    = {},
  DapStoppedNumber                  = {},
  DapLogPointText                   = { fg = c.white },
  DapLogPointLine                   = {},
  DapLogPointNumber                 = {},
  -- nvim-dap-ui
  DapUINormal                       = { link = "Normal" },
  DapUIVariable                     = { link = "Identifier" },
  DapUIScope                        = { fg = c.fg },
  DapUIType                         = { link = "Type" },
  DapUIValue                        = { fg = c.yellow },
  DapUIModifiedValue                = { fg = c.green, bold = true }, -- Inside scopes
  DapUIDecoration                   = { fg = c.fg },
  DapUIThread                       = {},
  DapUIStoppedThread                = { fg = c.fg },
  DapUIFrameName                    = { fg = c.blue_tint_1 },
  DapUISource                       = {},
  DapUILineNumber                   = { link = "SignColumn" },
  DapUIFloatNormal                  = {},
  DapUIFloatBorder                  = {},
  DapUIWatchesEmpty                 = { fg = c.fg },
  DapUIWatchesValue                 = { fg = c.fg },
  DapUIWatchesError                 = { fg = c.red },
  DapUIBreakpointsPath              = {},
  DapUIBreakpointsInfo              = {},
  DapUIBreakpointsCurrentLine       = {},
  DapUIBreakpointsLine              = {},
  DapUIBreakpointsDisabledLine      = {},
  DapUICurrentFrameName             = { fg = c.blue },
  DapUIStepOver                     = {},
  DapUIStepInto                     = {},
  DapUIStepBack                     = {},
  DapUIStepOut                      = {},
  DapUIStop                         = {},
  DapUIPlayPause                    = {},
  DapUIRestart                      = {},
  DapUIUnavailable                  = {},
  DapUIWinSelect                    = {},
  DapUIEndofBuffer                  = { link = "EndOfBuffer" },
}

return M
