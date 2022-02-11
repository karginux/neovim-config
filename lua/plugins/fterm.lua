local map = vim.api.nvim_set_keymap
local def = {noremap = true, silent = true}

require('FTerm').setup({
    ft = 'FTerm',
    border = 'single',
    auto_close = true,
    hl = 'Normal',
    blend = 2,
})

map('', '<C-t>',  '<CMD>lua require("FTerm").toggle()<CR>', def)
map('t', '<C-t>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', def)

