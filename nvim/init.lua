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

  -- Register a handler that will be called for all installed servers.
  -- Alternatively, you may also register handlers on specific server instances instead (see example below).
  local lsp_installer_servers = require'nvim-lsp-installer.servers'

  local rust_analyzer_available, rust_analyzer_requested = lsp_installer_servers.get_server("rust_analyzer")

  if rust_analyzer_available then
      rust_analyzer_requested:on_ready(function ()
          local opts = {}
          rust_analyzer_requested:setup(opts)
      end)
      if not rust_analyzer_requested:is_installed() then
          -- Queue the server to be installed
          rust_analyzer_requested:install()
      end
  end

  local sumneko_lua_available, sumneko_lua_requested = lsp_installer_servers.get_server("sumneko_lua")

  if sumneko_lua_available then
      sumneko_lua_requested:on_ready(function ()
          local luadev = require("lua-dev").setup({})
          sumneko_lua_requested:setup(luadev)
      end)
      if not sumneko_lua_requested:is_installed() then
          -- Queue the server to be installed
          sumneko_lua_requested:install()
      end
  end

  local pyright_available, pyright_requested = lsp_installer_servers.get_server("pyright")

  if pyright_available then
      pyright_requested:on_ready(function ()
          local opts = {}
          pyright_requested:setup(opts)
      end)
      if not pyright_requested:is_installed() then
          -- Queue the server to be installed
          pyright_requested:install()
      end
  end

else
  print("Vscode found")
end
