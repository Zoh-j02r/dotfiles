vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "mfussenegger/nvim-lint",
    "mhartington/formatter.nvim"
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }
  use {
    'akinsho/bufferline.nvim',
    tag = "v3.*",
    requires = 'nvim-tree/nvim-web-devicons'
  }
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-lualine/lualine.nvim'
  
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "L3MON4D3/LuaSnip"
  use "saadparwaiz1/cmp_luasnip"
  use "rafamadriz/friendly-snippets"
  
  use 'lervag/vimtex'
  use 'iamcco/markdown-preview.nvim'
  use 'NvChad/nvim-colorizer.lua'
end)
