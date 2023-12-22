-- Enable VScode dark theme
vim.o.background = 'dark'
-- local c = require('vscode.colors').get_colors()
require('vscode').setup({
  italic_comments = true,
})
require('vscode').load()

-- Enable Sonokai theme
-- vim.cmd[[
-- if has('termguicolors')
--   set termguicolors
-- endif
--
-- " let g:sonokai_style = 'default'
-- let g:sonokai_better_performance = 1
-- let g:sonokai_enable_italic = 1
-- let g:sonokai_dim_inactive_windows = 1
--
-- colorscheme sonokai
-- ]]
