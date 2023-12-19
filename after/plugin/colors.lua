vim.o.background = 'dark'
local c = require('vscode.colors').get_colors()
require('vscode').setup({
  italic_comments = true,
})
require('vscode').load()
