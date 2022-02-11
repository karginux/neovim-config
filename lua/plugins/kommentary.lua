local map = vim.api.nvim_set_keymap
local def = {noremap = true, silent = true}

map('n', 'gcc', '<Plug>kommentary_line_default', def)
map('v', 'gc', '<Plug>kommentary_visual_default', def)
