local c = require('core.coloring.palette')

require('bufferline').setup {
	options = {
		mode = "buffers",
		numbers = "none", 
		modified_icon = '● ',
		max_name_length = 18,
		max_prefix_length = 12, 
		truncate_names = true,
		tab_size = 24,
		diagnostics = "nvim_lsp", 
		diagnostics_update_in_insert = false,
		color_icons = true,
		show_buffer_icons = true,
		show_buffer_close_icons = false,
		show_buffer_default_icon = true,
		show_close_icon = false,
            	indicator = { icon = '|', style = 'icon'},
		show_tab_indicators = true,
        	separator_style = { '|', '|' },
		show_duplicate_prefix = true,
		persist_buffer_sort = true, 
		enforce_regular_tabs = true, 
		always_show_bufferline = true, 
		hover = { enabled = false },
        	offsets = {
        		{ 
			filetype = "CHADTree",
			text = "File Explorer", 
			text_align = "center"
			}
        	}
	};
	highlights = {
            fill = { bg = c.bg0 },
            background = { bg = c.bg0, fg = c.fg1 },
            buffer_visible = { fg = c.fg2, bg = c.bg0 },
            buffer_selected = { fg = c.fg0, bg = c.bg0, bold = false, italic = true},
            modified = { fg = c.cy0, bg = c.none },
            modified_visible = { fg = c.cy0, bg = c.none },
            modified_selected = { fg = c.cy0, bg = c.none },
	    separator = { fg = c.bg3, bg = c.bg0 },
            indicator_selected = { fg = c.cy0, bg = c.none }
        };
}
