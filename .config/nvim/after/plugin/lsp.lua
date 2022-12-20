vim.opt.signcolumn = 'yes' -- Reserve space for diagnostic icons

local lsp = require('lsp-zero')

lsp.set_preferences({
    suggest_lsp_servers = true,
    setup_servers_on_start = true,
    set_lsp_keymaps = false,
    configure_diagnostics = true,
    cmp_capabilities = true,
    manage_nvim_cmp = true,
    call_servers = 'local',
    sign_icons = {
        error = '✘',
        warn = '▲',
        hint = '⚑',
        info = ''
    }
})

lsp.on_attach(function(client, bufnr)
    local opts = {buffer = bufnr, remap = false}
    local bind = vim.keymap.set

    -- default keybindings
    bind("n", "K", vim.lsp.buf.hover, opts)
    bind("n", "gd", vim.lsp.buf.definition, opts)
    bind("n", "gD", vim.lsp.buf.declaration, opts)
    bind("n", "gi", vim.lsp.buf.implementation, opts)
    bind("n", "go", vim.lsp.buf.type_definition, opts)
    bind("n", "gr", vim.lsp.buf.references, opts)
    bind("n", "<C-k>", vim.lsp.buf.signature_help, opts)
    bind("n", "<F2>", vim.lsp.buf.rename, opts)
    bind("n", "<F4>", vim.lsp.buf.code_action, opts)

    -- diagnostic keybindings
    bind("n", "gf", vim.diagnostic.open_float, opts)
    bind("n", "[d", vim.diagnostic.goto_prev, opts)
    bind("n", "]d", vim.diagnostic.goto_next, opts)
    

end)


lsp.ensure_installed({
    'rust_analyzer',
    'clangd',
    'sumneko_lua',
    'pyright',
})

lsp.nvim_workspace()

lsp.setup()

