local config = {
    cmd = {'/opt/homebrew/bin/jdtls'},
    root_dir = vim.fs.dirname(vim.fs.find({'.gradlew', '.git', 'mvnw'}, { upward = true })[1]),
    on_attach = require('lsp_handles').on_attach,
    capabilities = require('cmp_nvim_lsp').default_capabilities()
}
require('jdtls').start_or_attach(config)
