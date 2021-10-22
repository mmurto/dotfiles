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


  local function setup_servers()
    require'lspinstall'.setup()
    local servers = require'lspinstall'.installed_servers()
    for _, server in pairs(servers) do
      require'lspconfig'[server].setup{on_attach=require'completion'.on_attach}
    end
  end

  setup_servers()

  -- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
  require'lspinstall'.post_install_hook = function ()
    setup_servers() -- reload installed servers
    vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
  end

  local luadev = require("lua-dev").setup({})
  local lspconfig = require("lspconfig")
  lspconfig.sumneko_lua.setup(luadev)
else
  print("Vscode found")
end