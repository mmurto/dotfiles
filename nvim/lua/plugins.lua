
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
        use 'SirVer/ultisnips'
        use "neovim/nvim-lspconfig"
        use 'hrsh7th/cmp-nvim-lsp'
        use 'hrsh7th/cmp-buffer'
        use 'hrsh7th/cmp-path'
        use 'hrsh7th/cmp-cmdline'
        use {
          'hrsh7th/nvim-cmp',
          config = function()
            local cmp = require'cmp'
            cmp.setup({
              snippet = {
                -- REQUIRED - you must specify a snippet engine
                expand = function(args)
                  -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
                  -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
                  vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
                  -- require'snippy'.expand_snippet(args.body) -- For `snippy` users.
                end,
              },
              mapping = {
                ['<Tab>'] = function(fallback)
                    if cmp.visible() then
                      cmp.select_next_item()
                    else
                      fallback()
                    end
                  end,
                  ['<S-Tab>'] = function(fallback)
                    if cmp.visible() then
                      cmp.select_prev_item()
                    else
                      fallback()
                    end
                  end,
                ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
                ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
                ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
                ['<C-e>'] = cmp.mapping({
                  i = cmp.mapping.abort(),
                  c = cmp.mapping.close(),
                }),
                ['<CR>'] = cmp.mapping.confirm({ select = true }),
              },
              sources = cmp.config.sources({
                { name = 'nvim_lsp' },
                -- { name = 'vsnip' }, -- For vsnip users.
                -- { name = 'luasnip' }, -- For luasnip users.
                { name = 'path' },
                { name = 'ultisnips' }, -- For ultisnips users.
                -- { name = 'snippy' }, -- For snippy users.
              })
            })

            -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
            cmp.setup.cmdline('/', {
              sources = {
                { name = 'buffer' }
              }
            })

            -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
            cmp.setup.cmdline(':', {
              sources = cmp.config.sources({
                { name = 'path' }
              }, {
                { name = 'cmdline' }
              })
            })
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
