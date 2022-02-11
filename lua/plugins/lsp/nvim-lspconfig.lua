local lspconfig = require('lspconfig')
local cmp_nvim_lsp = require('cmp_nvim_lsp')
local lsp = vim.lsp
local map = vim.api.nvim_set_keymap
local mapbuf = vim.api.nvim_buf_set_keymap
local def = {noremap = true, silent = true}

map('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', def)
map('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', def)
map('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', def)
map('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', def)

local on_attach = function(client, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    mapbuf(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', def)
    mapbuf(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', def)
    mapbuf(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', def)
    mapbuf(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', def)
    mapbuf(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', def)
    mapbuf(bufnr, 'n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', def)
    mapbuf(bufnr, 'n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', def)
    mapbuf(bufnr, 'n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', def)
    mapbuf(bufnr, 'n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', def)
    mapbuf(bufnr, 'n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', def)
    mapbuf(bufnr, 'n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', def)
    mapbuf(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', def)
    mapbuf(bufnr, 'n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', def)
end


local capabilities = cmp_nvim_lsp.update_capabilities(lsp.protocol.make_client_capabilities())

lspconfig.clangd.setup({
    on_attach = on_attach,
    capabilities = capabilities,
})

lspconfig.pyright.setup({
    on_attach = on_attach,
    capabilities = capabilities,
})
