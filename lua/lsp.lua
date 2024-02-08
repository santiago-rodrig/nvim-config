-- Setup language servers.
local lspconfig = require('lspconfig')
-- Python
lspconfig.pyright.setup {}
-- TypeScript/JavaScript
lspconfig.tsserver.setup {}
-- Rust, I don't even use it -_-
lspconfig.rust_analyzer.setup {
  -- Server-specific settings. See `:help lspconfig-setup`
  settings = {
    ['rust-analyzer'] = {},
  },
}


-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<space>ldf', vim.diagnostic.open_float)
vim.keymap.set('n', '<space>ldp', vim.diagnostic.goto_prev)
vim.keymap.set('n', '<space>ldn', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>ldl', vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', '<space>lgD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', '<space>lgd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', '<space>lh', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', '<space>lgi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<space>ls', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>lt', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>lr', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>lc', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', '<space>lgr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>lf', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})
