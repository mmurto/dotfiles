local cmd = vim.cmd
local g = vim.g

vim.api.nvim_set_keymap(
    "n",
    "<C-n>",
    ":NvimTreeToggle<CR>",
    {
        noremap = true,
        silent = true
    }
)

g.nvim_tree_side = 'right'
g.nvim_tree_width = 40
