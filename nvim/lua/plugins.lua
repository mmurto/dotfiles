
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
            require('tree')
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
          "windwp/nvim-autopairs",
          config = function()
            require('nvim-autopairs').setup()
          end
        }
	use {
          "nvim-treesitter/nvim-treesitter",
          config = function()
            require('nvim-treesitter.configs').setup{
              ensure_installed = "maintained",
              highlight = {
                enable = true
              },
              indent = {
                enable = true
              },
            }
          end
        }
        use "neovim/nvim-lspconfig"
        use {
          "hrsh7th/nvim-compe",
          config = function()
            require('compe').setup {
              enabled = true;
              autocomplete = true;
              debug = false;
              min_length = 1;
              preselect = 'enable';
              throttle_time = 80;
              source_timeout = 200;
              incomplete_delay = 400;
              max_abbr_width = 100;
              max_kind_width = 100;
              max_menu_width = 100;
              documentation = true;

              source = {
                path = true;
                buffer = true;
                calc = true;
                nvim_lsp = true;
                nvim_lua = true;
            };
          }
          end
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
        use 'kabouzeid/nvim-lspinstall'
        use 'nvim-lua/completion-nvim'
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
    end
)
