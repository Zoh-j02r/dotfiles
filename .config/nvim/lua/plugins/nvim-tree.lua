require("nvim-tree").setup({
	hijack_cursor = false,
	sort_by = "case_sensitive",
  	view = {
  		cursorline = false;
		width = 36,
  	},
  	renderer = {
    		group_empty = true,
  	},
  	filters = {
    		dotfiles = true,
  	},
})
