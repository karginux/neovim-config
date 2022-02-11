local map = vim.api.nvim_set_keymap
local def = {noremap = true, silent = true}

require('nvim-tree').setup({
--    view = {
--        mappings = {
--            custom_only = true,
--            list = {
--
--            },
--        },
--    },
})


map('i', '<C-b>', '<Esc>:NvimTreeToggle<CR>', def)
map('', '<C-b>', ':NvimTreeToggle<CR>', def)
