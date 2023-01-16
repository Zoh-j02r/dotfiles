vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'NvChad/nvim-colorizer.lua'
	use 'nvim-lualine/lualine.nvim'
	use 'lukas-reineke/indent-blankline.nvim'
	use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
	use {'ms-jpq/chadtree', branch = 'chad', run = 'python3 -m chadtree deps' }
	use {'ms-jpq/coq_nvim', branch = 'coq'}
--	use {'ms-jpq/coq.artifacts', branch = 'artifacts'}
	use {'nvim-treesitter/nvim-treesitter',
	    run = function()
	        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
	        ts_update()
	    end,
	}
	  use 'neovim/nvim-lspconfig'
end)
