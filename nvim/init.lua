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
  local lsp_installer = require("nvim-lsp-installer")

  lsp_installer.on_server_ready(function(server)
      local opts = {}
      local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
      opts.capabilities = capabilities

      if server.name == "rust_analyzer" then
          -- Initialize the LSP via rust-tools instead
          opts.settings = {
            ['rust-analyzer'] = {
              checkOnSave = {
                allFeatures = true,
                overrideCommand = {
                  'cargo', 'clippy', '--workspace', '--message-format=json', '--all-targets', '--all-features'
                }
              }
            }
          }
          require("rust-tools").setup {
              -- The "server" property provided in rust-tools setup function are the
              -- settings rust-tools will provide to lspconfig during init.            -- 
              -- We merge the necessary settings from nvim-lsp-installer (server:get_default_options())
              -- with the user's own settings (opts).
              server = vim.tbl_deep_extend("force", server:get_default_options(), opts),
          }
          server:attach_buffers()
      elseif server.name == "sumneko_lua" then
          local luadev = require("lua-dev").setup({})
          server:setup(luadev)
      elseif server.name == "yamlls" then
          opts.settings = {
              yaml = {
                  schemas = {
                      ["https://squidfunk.github.io/mkdocs-material/schema.json"] = "mkdocs.yml"
                  }
              }
          }
          server:setup(opts)
      else
          server:setup(opts)
      end
  end)
else
  print("Vscode found")
end
