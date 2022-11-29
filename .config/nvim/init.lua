-- fundamental configuration
require("settings")
require("keybindings")
require("plugins")

-- colorscheme
vim.cmd('colorscheme poimandres')

-- lualine
require("lualineconf")

-- lsp management and configuration
require("mason").setup()
require("mason-lspconfig").setup()
require("lspconf")
require("cmpconf")

-- treesitter
require'nvim-treesitter.configs'.setup {}


