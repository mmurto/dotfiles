local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local opt = {noremap = true, silent = true}

map("i", "jj", [[<Esc>]], opt)
map("n", "<leader>n", [[:bn<CR>]], opt)
map("n", "<leader>p", [[:bp<CR>]], opt)
map("n", "<leader>w", [[:w<CR>]], opt)
map("n", "<leader>q", [[:q<CR>]], opt)
map("n", "<leader>d", [[:bd<CR>]], opt)

-- LSP Mappings
map("n", "gd", [[<Cmd>lua vim.lsp.buf.definition()<CR>]], opt)
map("n", "gD", [[<Cmd>lua vim.lsp.buf.type_definition()<CR>]], opt)
map("n", "gi", [[<Cmd>lua vim.lsp.buf.implementation()<CR>]], opt)
map("n", "gr", [[<Cmd>lua vim.lsp.buf.references()<CR>]], opt)
map("n", "<leader>lr", [[<Cmd>lua vim.lsp.buf.rename()<CR>]], opt)
map("n", "<leader>la", [[<Cmd>lua vim.lsp.buf.code_action()<CR>]], opt)
map("n", "<leader>le", [[<Cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>]], opt)
map("n", "<leader>ln", [[<Cmd>lua vim.lsp.diagnostic.goto_next()<CR>]], opt)
map("n", "<leader>lp", [[<Cmd>lua vim.lsp.diagnostic.goto_prev()<CR>]], opt)
map("n", "<leader>lf", [[<Cmd>lua vim.lsp.buf.formatting()<CR>]], opt)
map("n", "K", [[<Cmd>lua vim.lsp.buf.hover()<CR>]], opt)
map("n", "<C-k>", [[<Cmd>lua vim.lsp.buf.signature_help()<CR>]], opt)
map("n", "<C-n>", ":NvimTreeToggle<CR>", opt)
map("n", "ö", ":", opt)


local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

