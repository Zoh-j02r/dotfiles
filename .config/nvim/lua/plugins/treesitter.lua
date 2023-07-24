require("nvim-treesitter.configs").setup {
  ensure_installed = { "c", "cpp", "bash", "lua" },
  sync_install = false,
  indent = { enable = true },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
