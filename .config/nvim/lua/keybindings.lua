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

function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
end

vim.cmd('autocmd! TermOpen term://*toggleterm#* lua set_terminal_keymaps()')

