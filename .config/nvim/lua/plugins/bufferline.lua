require('bufferline').setup{
	options = {
		mode = "buffers",
		numbers = "none", 
		modified_icon = '● ',
		max_name_length = 18,
		max_prefix_length = 12, 
		truncate_names = true,
		tab_size = 16,
		diagnostics = "nvim_lsp", 
		diagnostics_update_in_insert = false,
		color_icons = true,
		show_buffer_icons = true ,
		show_buffer_close_icons = false,
		show_buffer_default_icon = true,
		show_close_icon = false,
		show_tab_indicators = true,
		show_duplicate_prefix = true,
		persist_buffer_sort = true, 
		separator_style = "thick", 
		enforce_regular_tabs = false, 
		always_show_bufferline = true, 
		hover = {
			enabled = false,
		},
		highlights = {
			buffer_selected = {
			    italic = false
			},
		}
	}
}
