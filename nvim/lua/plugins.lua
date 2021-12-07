
local packer = require("packer")
local use = packer.use

-- using { } for using different branch , loading plugin with certain commands etc
return require("packer").startup(
    function()
        use "wbthomason/packer.nvim"
        use {
          "navarasu/onedark.nvim",
          config = function()
            require('onedark').setup()
          end
        }
	use {
          "kyazdani42/nvim-tree.lua",
          config = function()
            require('nvim-tree').setup{
              view = {
                side = 'right'
              }
            }
          end
        }
        use {
          'Saecki/crates.nvim',
          requires = { 'nvim-lua/plenary.nvim' },
          config = function()
            require('crates').setup()
          end,
        }
	use {
          "akinsho/nvim-bufferline.lua",
          config = function()
            require('bufferline').setup{}
          end
        }
	use "kyazdani42/nvim-web-devicons"
        use {
          "nvim-lualine/lualine.nvim",
          config = function()
            require('lualine').setup{
              options = {theme = "onedark"}
          }
          end
        }
	use {
          'nvim-telescope/telescope.nvim',
          requires = {{'nvim-lua/popup.nvim'}},
          config = function()
            require('telescope')
          end
	}
	use {
          "lewis6991/gitsigns.nvim",
          config = function()
            require('gitsigns').setup()
          end
        }
	use {
          "nvim-treesitter/nvim-treesitter",
          config = [[require('config.nvim-treesitter')]]
        }
        use 'SirVer/ultisnips'
        use "neovim/nvim-lspconfig"
        use 'hrsh7th/cmp-nvim-lsp'
        use 'hrsh7th/cmp-buffer'
        use 'hrsh7th/cmp-path'
        use 'hrsh7th/cmp-cmdline'
        use {
          'hrsh7th/nvim-cmp',
          config = [[require('config.nvim-cmp')]]
        }
        use {
          "onsails/lspkind-nvim",
          config = function()
            require('lspkind').init({})
          end
        }
        use "sbdchd/neoformat"
        use "nvim-lua/plenary.nvim"
        use "alvan/vim-closetag"
        use 'williamboman/nvim-lsp-installer'
        use {
          "folke/which-key.nvim",
          config = function()
            require("which-key").setup{}
          end
        }
        use "folke/lua-dev.nvim"
        use "tversteeg/registers.nvim"
        use {
          "folke/todo-comments.nvim",
          config = function()
            require('todo-comments').setup{}
          end
        }
        use "b3nj5m1n/kommentary"
        use "gennaro-tedesco/nvim-jqx"
        use "ggandor/lightspeed.nvim"
        use {
          'pwntester/octo.nvim',
          config=function()
            require"octo".setup()
          end
        }
        use {
          'blackCauldron7/surround.nvim',
          config=function()
            vim.g.surround_prefix = "<leader>s"
            require "surround".setup {}
          end
        }
        use {
          'pwntester/octo.nvim', 
          config=function()
            require"octo".setup()
          end
        }
        use {
          'windwp/nvim-autopairs',
          config=function()
            require('nvim-autopairs').setup{}
          end
        }
    end
)
