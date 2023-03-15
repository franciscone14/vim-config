require("project_nvim").setup { }
local alpha = require('alpha')
local dashboard = require('alpha.themes.dashboard')

require('telescope').load_extension('projects')
dashboard.section.header.val = {
    [[##   ## ######  #####  ##   ## ###### ##   ##]],
    [[###  ## ##     ##   ## ##   ## # ## # ### ###]],
    [[#### ## ##     ##   ## ##   ##   ##   #######]],
    [[####### #####  ##   ## ### ###   ##   #######]],
    [[## #### ##     ##   ##  #####    ##   ## # ##]],
    [[##  ### ##     ##   ##   ###   # ## # ##   ##]],
    [[##   ## ######  #####     #    ###### ##   ##]],
}

dashboard.section.buttons.val = {
    dashboard.button( "e", "  > New file" , ":ene <BAR> startinsert <CR>"),
    dashboard.button( "p", "  > Projects", ":lua require'telescope'.extensions.projects.projects{}<CR>"),
    dashboard.button( "r", "  > Recent"   , ":Telescope oldfiles<CR>"),
    dashboard.button( "s", "  > Settings" , ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
    dashboard.button( "q", "  > Quit NVIM", ":qa<CR>"),
}

alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
-- vim.cmd([[
--     autocmd FileType alpha setlocal nofoldenable
-- ]])
