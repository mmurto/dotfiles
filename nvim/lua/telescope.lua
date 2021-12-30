vim.api.nvim_set_keymap(
    "n",
    "<C-p>",
    ":Telescope git_files<CR>",
    {
        noremap = true,
        silent = true
    }
)

vim.api.nvim_set_keymap(
    "n",
    "<Leader>fg",
    ":Telescope live_grep<CR>",
    {
        noremap = true,
        silent = true
    }
)
vim.api.nvim_set_keymap(
    "n",
    "<Leader>ff",
    ":Telescope find_files<CR>",
    {
        noremap = true,
        silent = true
    }
)
vim.api.nvim_set_keymap(
    "n",
    "<Leader>fb",
    ":Telescope buffers<CR>",
    {
        noremap = true,
        silent = true
    }
)
vim.api.nvim_set_keymap(
    "n",
    "<Leader>fm",
    ":Telescope marks<CR>",
    {
        noremap = true,
        silent = true
    }
)
vim.api.nvim_set_keymap(
    "n",
    "<Leader>f/",
    ":Telescope current_buffer_fuzzy_find<CR>",
    {
        noremap = true,
        silent = true
    }
)
