local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }
local unbind_opts = { noremap = true}

keymap('n', '<C-n>', ':NvimTreeToggle<CR>', default_opts)
keymap('n', '<C-x>', ':BufferLinePickClose<CR>', default_opts)
keymap('n', '<S-h>', ':BufferLineCyclePrev<CR>', default_opts)
keymap('n', '<S-l>', ':BufferLineCycleNext<CR>', default_opts)

keymap('', '<up>', '<nop>', unbind_opts)
keymap('', '<down>', '<nop>', unbind_opts)
keymap('', '<left>', '<nop>', unbind_opts)
keymap('', '<right>', '<nop>', unbind_opts)
