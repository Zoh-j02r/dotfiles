local c = require('core.coloring.palette') 

local palette = {
  inactive = {
    a = {fg = c.wh1, bg = c.bl1, gui = 'bold'},
    b = {fg = c.wh1, bg = c.bl1},
    c = {fg = c.wh1, bg = c.bl1},
  },
  normal = {
    a = {fg = c.bl1, bg = c.gr0, gui = 'bold'},
    b = {fg = c.wh1, bg = c.bl0},
    c = {fg = c.wh1, bg = c.bl1},
  },
  visual = {a = {fg = c.bl1, bg = c.mg0, gui = 'bold'}},
  replace = {a = {fg = c.bl1, bg = c.rd0, gui = 'bold'}},
  insert = {a = {fg = c.bl1, bg = c.bu0, gui = 'bold'}},
  command = {a = {fg = c.bl1, bg = c.yw0, gui = 'bold'}},
}

require("lualine").setup{
  options = {
  icons_enabled = true,
  theme = palette,
  component_separators = { left = '|', right = '|'},
  section_separators = { left = ' ', right = ' '},
  disabled_filetypes = {
    statusline = {},
    winbar = {},
  },
  ignore_focus = {},
  always_divide_middle = true,
  globalstatus = false,
  refresh = {
    statusline = 1000,
    tabline = 1000,
    winbar = 1000,
  }
 },
 sections = {
  lualine_a = {'mode'},
  lualine_b = {'branch', 'diff', 'diagnostics'},
  lualine_c = {'filename'},
  lualine_x = {'encoding','filetype'},
  lualine_y = {'progress'},
  lualine_z = {'location'}
 },
}
