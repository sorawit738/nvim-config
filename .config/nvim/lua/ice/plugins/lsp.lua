local lsp = require('lsp-zero')

-- import cmp-nvim-lsp plugin
local cmp_nvim_lsp = require("cmp_nvim_lsp")

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
    'clangd',
    'jdtls',
    'lua_ls',
    'pyre',
    'pylsp',
  }
})

local on_attach = function(_, _)
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp.references, {})
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
  vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
  vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, {})
  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
end

local capabilities = cmp_nvim_lsp.default_capabilities()

require('lspconfig').clangd.setup{
  capabilities = capabilities,
  on_attach = on_attach
}
require('lspconfig').jdtls.setup{
  capabilities = capabilities,
  on_attach = on_attach
}
require('lspconfig').lua_ls.setup{
  capabilities = capabilities,
  on_attach = on_attach
}
require('lspconfig').pylsp.setup{
  capabilities = capabilities,
  on_attah = on_attach
}
require('lspconfig').pylsp.setup{
  capabilities = capabilities,
  on_attach = on_attach
}
