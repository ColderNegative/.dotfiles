local function map(m, k, v)
	vim.keymap.set(m, k, v, { silent = true })
end

-- map jk to esc
map("i", "jk", "<ESC>")

-- window creationg
map("n", "gs", "<C-w>s")
map("n", "gv", "<C-w>v")

-- window movement
map("n", "gh", "<C-w>h")
map("n", "gl", "<C-w>l")
map("n", "gj", "<C-w>j")
map("n", "gk", "<C-w>k")

-- window resizing
map("n", "g<Up>", "<C-w>+")
map("n", "g<Down>", "<C-w>-")
map("n", "g<Left>", "<C-w><S->>")
map("n", "g<Right>", "<C-w><S-<>")

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
