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

-- toggleterm
require("toggleterm").setup{
    open_mapping = [[tf]],
}

require'lspconfig'.arduino_language_server.setup {
  cmd = {
    "arduino-language-server",
    "-cli-config", "~/.arduinoIDE/arduino-cli.yaml",
    "-fqbn", "arduino:uvr:uno",
    "-cli", "arduino-cli",
    "-clangd", "clangd"
  }
}
