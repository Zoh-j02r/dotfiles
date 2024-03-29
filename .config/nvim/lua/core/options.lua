vim.opt.backup = false
vim.opt.nu = true
vim.opt.autoread = true
vim.opt.hlsearch = true
vim.opt.preserveindent = true
vim.opt.smartindent = true
vim.opt.termguicolors = true
vim.opt.clipboard = "unnamed,unnamedplus"
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"
vim.opt.guicursor = ""
vim.opt.showbreak =" +++ "
vim.opt.cmdheight = 0
vim.opt.showmode = false
vim.opt.updatetime = 500
vim.opt.wrap = false
vim.opt.smartindent = true
vim.opt.encoding = "utf-8"
vim.opt.shiftwidth = 2

vim.cmd[[filetype plugin indent on]]
vim.cmd[[hi Normal guibg=NONE ctermbg=NONE]]
vim.cmd[[hi EndOfBuffer guibg=NONE ctermbg=NONE]]
