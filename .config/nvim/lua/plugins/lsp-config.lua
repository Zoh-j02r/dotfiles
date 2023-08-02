local lspconfig = require "lspconfig"

local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig.clangd.setup {
  on_attach = on_attach_callback,
  capabilities = capabilities,
  cmd = {"clangd",
  "--background-index",
  "--clang-tidy",
  },
  filetypes = { "c", "cpp" },
  root_dir = lspconfig.util.root_pattern("compile_commands.json" , ".git" ),
}
