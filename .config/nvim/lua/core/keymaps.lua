local keymap = vim.keymap.set
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }

-- Better escape using jk in insert and terminal mode
keymap("i", "jk", "<ESC>", default_opts)
keymap("t", "jk", "<C-\\><C-n>", default_opts)

-- Better indent
keymap("v", "<", "<gv", default_opts)
keymap("v", ">", ">gv", default_opts)

-- tab navigation
keymap("n", "gh", "<C-w>h", default_opts)
keymap("n", "gj", "<C-w>j", default_opts)
keymap("n", "gk", "<C-w>k", default_opts)
keymap("n", "gl", "<C-w>l", default_opts)
keymap("n", "gs", "<C-w>s", default_opts)
keymap("n", "gv", "<C-w>v", default_opts)

-- tree toggle
keymap("n", "<leader>t", function() require("nvim-tree.api").tree.toggle() end, {})

-- lsp keymaps
keymap("n", "<leader>do", "<cmd>lua vim.diagnostic.open_float()<CR>", { noremap = true, silent = true })
keymap("n", "<leader>d[", "<cmd>lua vim.diagnostic.goto_prev()<CR>", { noremap = true, silent = true })
keymap("n", "<leader>d]", "<cmd>lua vim.diagnostic.goto_next()<CR>", { noremap = true, silent = true })
