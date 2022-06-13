
project_files = function()
  local opts = {} -- define here if you want to define something
  local ok = pcall(require"telescope.builtin".git_files, opts)
  if not ok then require"telescope.builtin".find_files(opts) end
end

vim.api.nvim_set_keymap(
    "n",
    "<C-p>",
    ":lua project_files()<CR>",
    {
        noremap = true,
        silent = true
    }
)

vim.api.nvim_set_keymap(
    "n",
    "<C-b>",
    ":Telescope buffers<CR>",
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
