local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end

-- map jk to esc
map("i", "jk", "<ESC>")

-- window creationg
map("n", "gs", "<C-w>s")
map("n", "gv", "<C-w>v")

-- window movement
map("n", "gl", "<C-w>l")
map("n", "gh", "<C-w>h")
map("n", "gj", "<C-w>j")
map("n", "gk", "<C-w>k")

-- window resizing
map("n", "g<Up>", "<C-w>+")
map("n", "g<Down>", "<C-w>-")
map("n", "g<Left>", "<C-w><S->>")
map("n", "g<Right>", "<C-w><S-<>")
