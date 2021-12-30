local scopes = {o = vim.o, b = vim.bo, w = vim.wo}

function opt(scope, key, value)
    scopes[scope][key] = value
    if scope ~= "o" then
        scopes["o"][key] = value
    end
end

opt("o", "hidden", true)
opt("o", "ignorecase", true)
opt("o", "splitbelow", true)
opt("o", "splitright", true)
opt("o", "termguicolors", true)
opt("w", "number", true)
opt("w", "relativenumber", true)
opt("o", "numberwidth", 2)
opt("w", "cul", true)
opt("b", "smartindent", true)
opt("o", "wrap", false)

opt("o", "mouse", "a")

opt("w", "signcolumn", "yes")
opt("o", "cmdheight", 1)

opt("o", "updatetime", 250) -- update interval for gitsigns
opt("o", "clipboard", "unnamedplus")

opt("o", "completeopt", "menuone,noinsert,noselect")
-- for indenline
opt("b", "expandtab", true)
opt("b", "shiftwidth", 2)
opt("o", "background", "light")
opt("o", "scrolloff", 10)

vim.g.onedark_style = "darker"
