require("core.options")
require("core.keymaps")
require("core.coloring")
require("plugins.packer")
require("plugins.lualine")
require("plugins.colorizer")
require("plugins.bufferline")
require("plugins.blankline")
require("plugins.chadtree")
require("plugins.treesitter")
require("plugins.vimtex")

local lspconfig = require "lspconfig"
local coq = require "coq"

	-- SOLVE: create a lsp config file 
	-- SOLVE: create coq config file for customization  
vim.cmd[[COQnow -s]]

lspconfig.ccls.setup(coq.lsp_ensure_capabilities({
	on_attach = on_attach_callback,
	cmd = {'ccls'},
	root_dir = lspconfig.util.root_pattern('compile_commands.json','.git'),
}))

lspconfig.rust_analyzer.setup(coq.lsp_ensure_capabilities({
	on_attach = on_attach_callback,
	cmd = {'rust-analyzer'},
	filetypes =  {'rust'},
	root_dir = lspconfig.util.root_pattern('Cargo.toml'),
}))
