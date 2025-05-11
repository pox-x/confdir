-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.cmd("hi StatusLine guibg=NONE ctermbg=NONE")
vim.cmd("hi StatusLineNC guibg=NONE ctermbg=NONE")
vim.cmd("hi CursorLine guibg=NONE ctermbg=NONE")
vim.cmd("hi CursorLineNr guibg=NONE ctermbg=NONE guifg=#f92838 gui=bold")
vim.opt.guicursor = "n-v-c:block-blinkwait200-blinkon150-blinkoff150,i-ci:ver25-blinkwait200-blinkon150-blinkoff150"

-- Désactive la coloration syntaxique
-- Dans init.lua
vim.cmd('syntax off') -- Désactive la syntaxe
-- vim.opt.termguicolors = false -- Désactive l'utilisation des couleurs pour la syntaxe

-- Désactive les couleurs de syntaxe personnalisées (ex : Normal, Comment)
-- vim.cmd('highlight Normal guifg=NONE guibg=NONE')
-- vim.cmd('highlight Comment guifg=NONE guibg=NONE')
-- vim.cmd('highlight Keyword guifg=NONE guibg=NONE')
-- vim.cmd('highlight Function guifg=NONE guibg=NONE')

vim.cmd('highlight Normal guifg=#ffffff guibg=NONE')
vim.cmd('highlight Comment guifg=#ffffff guibg=NONE')
vim.cmd('highlight Keyword guifg=#ffffff guibg=NONE')
vim.cmd('highlight Function guifg=#ffffff guibg=NONE')
