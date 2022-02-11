local map = vim.api.nvim_set_keymap
local def = {noremap = true, silent = true}


-- change <ESC> to jj
map('i', 'jj', '<Esc>l', def)

-- do not ducking use arrows
map('', '<up>', ':echoe "Use k"<CR>', def)
map('', '<down>', ':echoe "Use j"<CR>', def)
map('', '<left>', ':echoe "Use h"<CR>', def)
map('', '<right>', ':echoe "Use l"<CR>', def)
