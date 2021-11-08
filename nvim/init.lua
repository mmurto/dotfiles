local execute = vim.api.nvim_command
local fn = vim.fn
local g = vim.g

if not g.vscode then
  local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
    execute 'packadd packer.nvim'
  end

  g.mapleader = " "

  vim.cmd [[packadd packer.nvim]]
  require('misc')
  require('plugins')
  require('mappings')
  require('which-keys')

  local lsp_installer = require("nvim-lsp-installer")

  -- Register a handler that will be called for all installed servers.
  -- Alternatively, you may also register handlers on specific server instances instead (see example below).
  lsp_installer.on_server_ready(function(server)
      local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
      local opts = {
        capabilities = capabilities
      }

      -- (optional) Customize the options passed to the server
      -- if server.name == "tsserver" then
      --     opts.root_dir = function() ... end
      -- end

      -- This setup() function is exactly the same as lspconfig's setup function.
      -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/ADVANCED_README.md
      server:setup(opts)
  end)


  local luadev = require("lua-dev").setup({})
  local lspconfig = require("lspconfig")
  lspconfig.sumneko_lua.setup(luadev)
else
  print("Vscode found")
end
