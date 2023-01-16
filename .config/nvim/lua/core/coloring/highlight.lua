local c = require('core.coloring.palette')

local M = {}
local hl = {langs = {}, plugins = {}}

local function vim_highlights(highlights)
	for group_name, group_settings in pairs(highlights) do
		vim.api.nvim_command(string.format("highlight %s guifg=%s guibg=%s guisp=%s gui=%s", group_name,
			group_settings.fg or "none",
			group_settings.bg or "none",
			group_settings.sp or "none",
			group_settings.fmt or "none"))
	end
end

-- To see what those variables do,look: https://neovim.io/doc/user/syntax.html
hl.common = {

	Normal = { fg = c.fg0, bg = c.bg0 }, 
	Terminal = {fg = c.fg0, bg = transparent and c.none or c.bg0}, --
	EndOfBuffer = {fg = c.b3 and c.bg2 or c.bg0, bg = c.b3 and c.none or c.bg0}, --
	FoldColumn = {fg = c.fg, bg = transparent and c.none or c.bg1}, --
	Folded = {fg = c.fg, bg = c.bg3 and c.none or c.bg1}, --
	SignColumn = {fg = c.fg, bg = c.bg3 and c.none or c.bg0},
	ToolbarLine = {fg = c.fg0},

	Cursor = {fmt = "reverse"},
	vCursor = Cursor,
	iCursor = Cursor,
	lCursor = Cursor,
	CursorIM = Cursor, 
	CursorColumn = {bg = c.bg1},
	CursorLine = {bg = c.bg1},
	ColorColumn = {bg = c.bg1},
	CursorLineNr = {fg = c.wh1},
	LineNr = {fg = c.fg1}, 

	Conceal = {fg = c.fg0, bg = c.bg1},

	DiffAdd = {fg = c.gr0, bg = c.bg0, fmt = "reverse"},
	DiffDelete = {fg = c.rd0, bg = c.bg0, fmt = "reverse"},
	DiffChange = {fg = c.bu0, bg = c.bg0, fmt = "reverse"},
	DiffText = {fg = c.yw0, bg = c.bg0, fmt = "reverse"}, 
	DiffAdded = {fg = c.gr0},
	DiffRemoved = {fg = c.rd0},
	DiffFile = {fg = c.cy0},
	DiffIndexLine = {fg = c.wh0},

	Directory = {fg = c.bu1},

	MsgArea = {fg=c.fg2, bg=c.bg1},
	ErrorMsg = {fg = c.rd1, fmt = "bold"},
	WarningMsg = {fg = c.wrl, fmt = "bold"},
	MoreMsg = {fg = c.bu0, fmt = "bold"},

	IncSearch = {fg = c.wh1, bg = c.bg3},
	Search = {fg = c.wh1, bg = c.bg1},
	Substitute = {fg = c.wh1, bg = c.bg3},
	MatchParen = {fg = c.cy1, bg = c.bg0, fmt = "bold"},

	NonText = {fg = c.wh0},
	Whitespace = {fg = c.wh0},
	SpecialKey = {fg = c.wh0},

	Pmenu = {fg = c.fg2, bg = c.bg1},
	PmenuSbar = {fg = c.none, bg = c.bg1},
	PmenuSel = {fg = c.fg2, bg = c.bg3},
	WildMenu = {fg = c.fg1, bg = c.bg3},
	PmenuThumb = {fg = c.none, bg = c.bg2},

	Question = {fg = c.wrl},

	StatusLine = {fg = c.fg0, bg = c.bg2},
	StatusLineTerm = {fg = c.fg0, bg = c.bg2},
	StatusLineNC = {fg = c.wh0, bg = c.bg1},
	StatusLineTermNC = {fg = c.wh0, bg = c.bg1},

	TabLine = {fg = c.fg0, bg = c.bg1},
	TabLineFill = {fg = c.wh0, bg = c.bg1},
	TabLineSel =  {fg = c.bg0, bg = c.fg0},
	VertSplit = {fg = c.bg3},
	Visual = {bg = c.bg3},
	QuickFixLine = {fg = c.bu0, fmt = "underline"},
	Debug = {fg = c.yw0},
	debugPC = {fg = c.bg0, bg = c.gr0},
	debugBreakpoint = {fg = c.bg0, bg = c.rd0},
	ToolbarButton = {fg = c.bg0, bg = c.bu0},
	FloatBorder = {fg = c.wh0, bg = c.bg1},
	NormalFloat = {fg = c.fg0, bg = c.bg1},
}

hl.syntax = {
	Comment = {fg = c.bg3, fmt = "italic" },
	Constant = {fg = c.gr1},
	String = {fg = c.gr1},
	Character = {fg = c.gr1},
	Number = {fg = c.gr1},
	Boolean = {fg = c.gr1},
	Float = {fg = c.gr1},

	Identifier = {fg = c.cy1, fmt = "bold"},
	Function = {fg = c.cy1, fmt = "bold"},

	Statement = {fg = c.fg2 ,fmt = "bold"},
	Conditional = {fg = c.fg2, fmt = "bold"},
	Repeat = {fg = c.fg2, fmt = "bold"},
	Label = {fg = c.fg2},
	Operator = {fg = c.gr0},
	Keyword = {fg = c.fg2, fmt = none },
	Exception = {fg = c.fg2},

	PreProc = {fg = c.bu0},
	Include = {fg = c.bu0},
	Define = {fg = c.bu0},
	Macro = {fg = c.bu0},
	PreCondit = {fg = c.bu0},

	Type = {fg = c.cy0},
	StorageClass = {fg = c.cy0},
	Structure = {fg = c.cy0},
	Typedef = {fg = c.cy0},

	Special = {fg = c.yw1},
	SpecialChar = {fg = c.yw1},
	Tag = {fg = c.rd1},
	Delimiter = {fg = c.rd1},
	SpecialComment = {fg = c.fg1, fmt = "italic" },
	Debug = {fg = c.bg3},
	
	Underlined = {fg = c.bu1 },

	Error = {fg = c.rd1},

	Todo = {fg = c.rd0, fmt = "italic" },

	Title = {fg = c.cy0},
}
function M.setup()
	vim_highlights(hl.common)
	vim_highlights(hl.syntax)
	for _, group in pairs(hl.langs) do vim_highlights(group) end
	for _, group in pairs(hl.plugins) do vim_highlights(group) end
	vim.cmd("highlight id1 guifg=" .. c.cy0 .. " gui=nocombine")
end

return M
