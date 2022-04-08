
vim.g.mapleader = ' '

vim.cmd [[
	syntax enable

	set autochdir
]]

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

local lspconfig = require('lspconfig')

local servers = {'clangd'}
for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        capabilities = capabilities,
    }
end

local luasnip

vim.api.nvim_set_keymap('n', '<Leader>wl', ':wincmd l<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>wh', ':wincmd h<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>wj', ':wincmd j<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>wk', ':wincmd k<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>wv', ':wincmd v<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>wv', ':wincmd v<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>wq', ':wincmd q<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>w=', ':wincmd =<CR>', {noremap = true})
