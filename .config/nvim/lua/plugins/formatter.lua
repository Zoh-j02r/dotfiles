local util = require "formatter.util"

require("formatter").setup {
  logging = true,
  log_level = vim.log.levels.WARN,
  filetype = {
    c = {
      require("formatter.filetypes.c").clangformat,
    },
    ["*"] = {
      require("formatter.filetypes.any").remove_trailing_whitespace
    }
  }
}
